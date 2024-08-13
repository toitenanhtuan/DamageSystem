import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_app/pages/compare_screen.dart';

class Camera extends StatefulWidget {
  final List<Map<String, dynamic>> savedComparisons;

  Camera({required this.savedComparisons});
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<Camera> {
  File? _damagedImage;
  final ImagePicker _picker = ImagePicker();

  // Hàm chụp ảnh
  Future<void> _captureImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _damagedImage = File(image.path);
      });
    }
  }

  // Hàm chọn ảnh từ thư viện
  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _damagedImage = File(image.path);
      });
    }
  }

  // Chuyển sang màn hình so sánh
  void _goToCompareScreen() {
    if (_damagedImage != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CompareScreen(
            damagedImage: _damagedImage!,
            savedComparisons: widget.savedComparisons,
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Thông báo"),
          content: Text("Vui lòng chụp hoặc chọn ảnh bị hỏng trước khi tiếp tục."),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  // Hàm xóa ảnh
  void _clearImage() {
    setState(() {
      _damagedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (_damagedImage == null)
            Center(
              child: Text(
                "Chụp hoặc chọn ảnh bị hỏng",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          else
            Positioned(
              top: screenHeight * 0.1,
              child: Image.file(
                _damagedImage!,
                width: screenWidth * 0.9,
                height: screenHeight * 0.6,
                fit: BoxFit.cover,
              ),
            ),
          Positioned(
            bottom: screenHeight * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.photo, color: Colors.white, size: 42),
                  onPressed: _pickImage,
                ),
                SizedBox(width: 40),
                IconButton(
                  icon: Icon(Icons.camera_alt, color: Colors.white, size: 42),
                  onPressed: _captureImage,
                ),
              ],
            ),
          ),
          if (_damagedImage != null)
            Positioned(
              right: 20,
              bottom: screenHeight * 0.1,
              child: Container(
                width: screenWidth * 0.2,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.file(_damagedImage!, fit: BoxFit.cover),
              ),
            ),
          Positioned(
            left: 16,
            top: 40,
            child: ElevatedButton(
              onPressed: _clearImage,
              child: Text("Dọn dẹp"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          if (_damagedImage != null)
            Positioned(
              right: 16,
              top: 40,
              child: ElevatedButton(
                onPressed: _goToCompareScreen,
                child: Text("Tiếp theo"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
