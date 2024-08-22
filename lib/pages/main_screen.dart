import 'package:flutter/material.dart';
import 'package:flutter_app/pages/service.dart';
import 'package:flutter_app/pages/camera.dart';
import 'package:flutter_app/pages/folder.dart';
import 'package:flutter_app/pages/thongbao.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter_app/pages/map_screen.dart';
import 'package:flutter_app/pages/folder.dart';

class MainScreen extends StatelessWidget {
  final List<Map<String, dynamic>> savedComparisons = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Trang chủ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.more_horiz, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Thongbao(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.circle_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 4019.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                _buildGridItem(context, 'assets/images/camera.png', 'Máy Ảnh', Camera(savedComparisons: savedComparisons)),
                _buildGridItem(context, 'assets/images/service.png', 'Dịch Vụ', Service(diffArea: 0.0, diffDistance: 0.0)),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text("Tin Tức"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.black),
              onPressed: () {
                // Hành động khi nhấn nút Home
              },
            ),
            IconButton(
              icon: Icon(Icons.folder, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FolderScreen(savedComparisons: savedComparisons),
                  ),
                );
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/images/maps-and-flags.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {
                // Hành động khi nhấn nút hồ sơ
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String iconPath, String label, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
