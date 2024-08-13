import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FolderScreen extends StatelessWidget {
  final List<Map<String, dynamic>> savedComparisons;

  FolderScreen({required this.savedComparisons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lưu trữ dữ liệu"),
        actions: [
          IconButton(
            icon: Icon(Icons.circle_outlined),
            onPressed: () {
              // Hành động khi bấm vào nút tròn
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: savedComparisons.length,
        itemBuilder: (context, index) {
          final comparison = savedComparisons[index];
          final date = DateFormat('dd/MM/yyyy').format(comparison['date']);

          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lưu trữ ${index + 1}: Ngày $date",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Kết quả: Diện tích ${comparison['area'].toStringAsFixed(4)} m²",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Khoảng cách: ${comparison['distance'].toStringAsFixed(4)} m",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
