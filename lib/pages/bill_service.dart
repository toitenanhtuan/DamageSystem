import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'review_service.dart';

class BillServiceScreen extends StatefulWidget {
  final String bodyPart;
  final int partPrice;
  final int repairCost;

  BillServiceScreen({
    required this.bodyPart,
    required this.partPrice,
    required this.repairCost,
  });

  @override
  _BillServiceScreenState createState() => _BillServiceScreenState();
}

class _BillServiceScreenState extends State<BillServiceScreen> {
  String? _selectedPaintService;
  String? _selectedWashService;
  String? _selectedPolishingService;

  final Map<String, int> _paintServices = {
    'Sơn dặm xe': 1500000,
    'Màu đỏ': 10000000,
    'Đỏ trơ': 7000000,
    'Đen': 6000000,
    'Không dùng dịch vụ này': 0,
  };

  final Map<String, int> _washServices = {
    'Rửa bên ngoài': 150000,
    'Rửa xe tiêu chuẩn': 200000,
    'Rửa xe cao cấp': 300000,
    'Không dùng dịch vụ này': 0,
  };

  final Map<String, int> _polishingServices = {
    'Đánh bóng xe nhanh': 700000,
    'Đánh bóng xe cơ bản': 1200000,
    'Không dùng dịch vụ này': 0,
  };

  int _calculateTotalServiceCost() {
    int total = 0;
    total += _paintServices[_selectedPaintService] ?? 0;
    total += _washServices[_selectedWashService] ?? 0;
    total += _polishingServices[_selectedPolishingService] ?? 0;
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn Dịch Vụ', style: GoogleFonts.poppins()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDropdownButton(
              label: '-- Chọn Dịch Vụ Sơn --',
              value: _selectedPaintService,
              items: _paintServices.keys.toList(),
              onChanged: (value) {
                setState(() {
                  _selectedPaintService = value;
                });
              },
            ),
            SizedBox(height: 20),
            _buildDropdownButton(
              label: '-- Chọn Dịch Vụ Rửa Xe --',
              value: _selectedWashService,
              items: _washServices.keys.toList(),
              onChanged: (value) {
                setState(() {
                  _selectedWashService = value;
                });
              },
            ),
            SizedBox(height: 20),
            _buildDropdownButton(
              label: '-- Chọn Dịch Vụ Đánh Bóng --',
              value: _selectedPolishingService,
              items: _polishingServices.keys.toList(),
              onChanged: (value) {
                setState(() {
                  _selectedPolishingService = value;
                });
              },
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tính tổng chi phí dịch vụ
                  int totalServiceCost = _calculateTotalServiceCost();

                  // Chuyển sang màn hình ReviewScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewScreen(
                        bodyPart: widget.bodyPart,
                        partPrice: widget.partPrice,
                        repairCost: widget.repairCost,
                        serviceCost: totalServiceCost,
                        selectedPaintService: _selectedPaintService,
                        selectedWashService: _selectedWashService,
                        selectedPolishingService: _selectedPolishingService,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Tiếp Tục',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    height: 1.5,
                    letterSpacing: 0.4,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownButton({
    required String label,
    String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
    bool isEnabled = true,
  }) {
    return Opacity(
      opacity: isEnabled ? 1.0 : 0.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 2,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: DropdownButton<String>(
          isExpanded: true,
          underline: SizedBox(),
          value: isEnabled ? value : null,
          hint: Text(
            label,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              letterSpacing: 0.4,
              color: Color(0xFF000000),
            ),
          ),
          items: isEnabled
              ? items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 0.4,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Text(
                    '${_getPriceForItem(item)} VND',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 0.4,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            );
          }).toList()
              : [],
          onChanged: isEnabled ? onChanged : null,
        ),
      ),
    );
  }

  int _getPriceForItem(String item) {
    if (_paintServices.containsKey(item)) {
      return _paintServices[item]!;
    } else if (_washServices.containsKey(item)) {
      return _washServices[item]!;
    } else if (_polishingServices.containsKey(item)) {
      return _polishingServices[item]!;
    }
    return 0;
  }
}
