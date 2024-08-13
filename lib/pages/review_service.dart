import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReviewScreen extends StatelessWidget {
  final String bodyPart;
  final int partPrice;
  final int repairCost;

  ReviewScreen({
    required this.bodyPart,
    required this.partPrice,
    required this.repairCost,
  });

  // Hàm định dạng số theo kiểu tiền tệ Việt Nam
  String formatCurrency(int number) {
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '',
      decimalDigits: 0,
    );
    return formatter.format(number);
  }

  @override
  Widget build(BuildContext context) {
    int totalCost = partPrice + repairCost;

    return Scaffold(
      appBar: AppBar(
        title: Text('Tổng Chi Phí Dịch Vụ'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Loại Thân Vỏ: $bodyPart',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Giá Tiền: ${formatCurrency(partPrice)} VND',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Chi Phí Sửa Chữa: ${formatCurrency(repairCost)} VND',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Tổng Chi Phí: ${formatCurrency(totalCost)} VND',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add logic to proceed with the service
                },
                child: Text('Hoàn Thành'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
