import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReviewScreen extends StatelessWidget {
  final String bodyPart;
  final int partPrice;
  final int repairCost;
  final int serviceCost;
  final String? selectedPaintService;
  final String? selectedWashService;
  final String? selectedPolishingService;

  ReviewScreen({
    required this.bodyPart,
    required this.partPrice,
    required this.repairCost,
    required this.serviceCost,
    this.selectedPaintService,
    this.selectedWashService,
    this.selectedPolishingService,
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

  // Hàm để kiểm tra và hiển thị dịch vụ nếu có
  String _getSelectedServices() {
    List<String> services = [];

    if (selectedPaintService != null && selectedPaintService != 'Không dùng dịch vụ này') {
      services.add('Dịch vụ sơn: $selectedPaintService');
    }
    if (selectedWashService != null && selectedWashService != 'Không dùng dịch vụ này') {
      services.add('Dịch vụ rửa xe: $selectedWashService');
    }
    if (selectedPolishingService != null && selectedPolishingService != 'Không dùng dịch vụ này') {
      services.add('Dịch vụ đánh bóng: $selectedPolishingService');
    }

    return services.join('\n');
  }

  @override
  Widget build(BuildContext context) {
    int totalCost = partPrice + repairCost + serviceCost;

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
              'Giá Phụ Tùng: ${formatCurrency(partPrice)} VND',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Chi Phí Sửa Chữa: ${formatCurrency(repairCost)} VND',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Chi Phí Dịch Vụ: ${formatCurrency(serviceCost)} VND',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            if (_getSelectedServices().isNotEmpty)
              Text(
                'Dịch Vụ Đã Chọn:\n${_getSelectedServices()}',
                style: TextStyle(fontSize: 18),
              ),
            Spacer(),
            Divider(),
            Text(
              'Tổng Chi Phí: ${formatCurrency(totalCost)} VND',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Xử lý khi người dùng bấm nút hoàn thành
                  Navigator.pop(context);
                },
                child: Text('Hoàn Thành'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
