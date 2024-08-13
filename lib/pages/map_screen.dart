import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  List<Marker> markers = [];
  final String apiKey = "AIzaSyBa9FRf-fEjTSd66sSZarEx_dfuYaU7hTQ";
  final uuid = Uuid();
  late String sessionToken;
  LatLng? currentLocation;

  @override
  void initState() {
    super.initState();
    sessionToken = uuid.v4();
    _getCurrentLocation();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _getCurrentLocation() async {
    Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final locData = await location.getLocation();
    setState(() {
      currentLocation = LatLng(locData.latitude!, locData.longitude!);
    });

    _searchNearbyServices(); // Gọi hàm tìm kiếm sau khi lấy được vị trí hiện tại
  }

  void _searchNearbyServices() async {
    if (currentLocation == null) return;

    final url =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${currentLocation!.latitude},${currentLocation!.longitude}&radius=1500&type=car_repair&key=$apiKey&sessiontoken=$sessionToken';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final results = json['results'];

      setState(() {
        markers.clear();
        for (var place in results) {
          final marker = Marker(
            markerId: MarkerId(place['place_id']),
            position: LatLng(
              place['geometry']['location']['lat'],
              place['geometry']['location']['lng'],
            ),
            infoWindow: InfoWindow(
              title: place['name'],
              snippet: place['vicinity'],
            ),
          );
          markers.add(marker);
        }
      });

      // Di chuyển camera đến vị trí hiện tại
      mapController.animateCamera(CameraUpdate.newLatLngZoom(currentLocation!, 14.0));
    } else {
      print('Failed to load nearby places');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
        backgroundColor: Colors.green[700],
      ),
      body: currentLocation == null
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: currentLocation!,
          zoom: 14.0,
        ),
        markers: Set<Marker>.of(markers),
      ),
    );
  }
}
