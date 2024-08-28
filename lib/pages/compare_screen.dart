import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:image/image.dart' as img;
import 'package:flutter_app/pages/service.dart';

class CompareScreen extends StatelessWidget {
  final File damagedImage;
  final List<Map<String, dynamic>> savedComparisons;

  CompareScreen({
    required this.damagedImage,
    required this.savedComparisons,
  });

  // Hàm so sánh ảnh bị hỏng với ảnh từ model (được tích hợp API sau)
  Future<Map<String, dynamic>> compareImages() async {
    try {
      final image1Data = await File(damagedImage.path).readAsBytes();

      // Gọi API YOLO để lấy ảnh đã qua xử lý
      final image2Data = await fetchTrainedImageFromAPI('http://127.0.0.1:8080/detection');

      final img1 = img.decodeImage(image1Data);
      final img2 = img.decodeImage(image2Data);

      if (img1 == null || img2 == null) {
        return {'error': 'Không thể tải hình ảnh hoặc hình ảnh không hợp lệ.'};
      }

      final targetWidth = img1.width;
      final targetHeight = img1.height;
      final resizedImage2 = img.copyResize(img2, width: targetWidth, height: targetHeight);

      final difference = getDifference(img1, resizedImage2);
      final diffPixels = countDiffPixels(difference);

      final pixel_to_meter = 0.0002645833;
      final diffDistance = diffPixels * pixel_to_meter;
      final pixel_area_m2 = pixel_to_meter * pixel_to_meter;
      final diffArea = diffPixels * pixel_area_m2;

      return {
        'diffImage': difference,
        'diffPixels': diffPixels,
        'diffDistance': diffDistance,
        'diffArea': diffArea,
      };
    } catch (e) {
      return {'error': 'Đã xảy ra lỗi: $e'};
    }
  }

  // Giả lập hàm gọi API để lấy ảnh đã qua xử lý từ YOLO
  Future<Uint8List> fetchTrainedImageFromAPI(String url) async {
    // Thực hiện gọi API tại đây và trả về dữ liệu ảnh dưới dạng Uint8List
    // Ở đây chỉ là giả lập với dữ liệu tạm thời
    return await File(damagedImage.path).readAsBytes(); // Thay bằng logic thực tế
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("So sánh hình ảnh"),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: compareImages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || !snapshot.hasData || snapshot.data!['error'] != null) {
            return Center(child: Text("Lỗi: ${snapshot.data!['error']}"));
          } else {
            final diffImage = snapshot.data!['diffImage'];
            final diffPixels = snapshot.data!['diffPixels'];
            final diffDistance = snapshot.data!['diffDistance'];
            final diffArea = snapshot.data!['diffArea'];

            Uint8List diffImageData = Uint8List.fromList(img.encodeJpg(diffImage));

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.memory(diffImageData, fit: BoxFit.cover),
                  SizedBox(height: 16),
                  Text("Diện tích khác biệt: $diffPixels pixel(s)"),
                  Text("Khoảng cách khác biệt: ${diffDistance.toStringAsFixed(4)} mét"),
                  Text("Tương đương mét vuông: ${diffArea.toStringAsFixed(4)} m^2"),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () async {
                      bool shouldSave = await _showSaveDialog(context);
                      if (shouldSave) {
                        _saveComparison(diffArea, diffDistance);
                      }
                    },
                    child: Text("Lưu kết quả"),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Chuyển đến màn hình Service
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Service(),
                        ),
                      );
                    },
                    child: Text("Dịch vụ sửa chữa"),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  img.Image getDifference(img.Image img1, img.Image img2) {
    final diff = img.Image.from(img1);

    for (int y = 0; y < img1.height; y++) {
      for (int x = 0; x < img1.width; x++) {
        final pixel1 = img1.getPixel(x, y);
        final pixel2 = img2.getPixel(x, y);

        if (pixel1 != pixel2) {
          diff.setPixel(x, y, img.getColor(255, 0, 0)); // Đánh dấu khác biệt bằng màu đỏ
        } else {
          diff.setPixel(x, y, img.getColor(0, 0, 0)); // Không khác biệt thì để màu đen
        }
      }
    }

    return diff;
  }

  int countDiffPixels(img.Image diff) {
    int diffPixels = 0;

    for (int y = 0; y < diff.height; y++) {
      for (int x = 0; x < diff.width; x++) {
        if (diff.getPixel(x, y) != img.getColor(0, 0, 0)) {
          diffPixels++;
        }
      }
    }

    return diffPixels;
  }

  Future<bool> _showSaveDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Lưu kết quả?"),
        content: Text("Bạn có muốn lưu kết quả này vào thư mục không?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text("Không"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text("Có"),
          ),
        ],
      ),
    );
  }

  void _saveComparison(double diffArea, double diffDistance) {
    savedComparisons.add({
      'damagedImage': damagedImage,
      'diffArea': diffArea,
      'diffDistance': diffDistance,
      'date': DateTime.now().toString(),
    });
  }
}
