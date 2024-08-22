import 'package:flutter/material.dart';
import 'package:flutter_app/pages/bill_service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/review_service.dart';
import 'package:intl/intl.dart';

class Service extends StatefulWidget {
  final double diffArea;
  final double diffDistance;

  Service({
    this.diffArea = 0.0,
    this.diffDistance = 0.0,
  });

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  String? _selectedService;
  String? _selectedBrand;
  String? _selectedModel;
  String? _selectedVersion;
  String? _selectedBodyPartType;

  final List<String> _services = ['Bảo dưỡng xe ô tô', 'Chuẩn đoán xe ô tô'];

  final Map<String, List<String>> _brands = {
    'Toyota': ['Sedan - Toyota Camry', 'Sedan - Toyota Corolla Altis', 'SUV - Toyota Fortuner'],
    'Honda': ['Sedan - Honda Civic', 'Crossover - Honda CR-V'],
  };

  final Map<String, List<String>> _models = {
    'Sedan - Toyota Camry': ['Toyota Camry 2.0G', 'Toyota Camry 2.5Q'],
    'Sedan - Toyota Corolla Altis': ['Toyota Corolla Altis 1.8G', 'Toyota Corolla Altis 1.8V'],
    'SUV - Toyota Fortuner': ['Toyota Fortuner 2.4G', 'Toyota Fortuner 2.8V'],
    'Sedan - Honda Civic': ['Honda Civic 1.8E', 'Honda Civic 1.5RS'],
    'Crossover - Honda CR-V': ['Honda CR-V 1.5E', 'Honda CR-V 1.5G'],
  };

  final Map<String, int> _bodyPartPrices = {
    'Cản sau xe': 2500000,
    'Cản trước xe': 2000000,
    'Cửa xe': 15000000,
    'Mặt nạ xe': 3000000,
  };

  final Map<String, int> _repairCosts = {
    'Cản sau xe': 500000,
    'Cản trước xe': 500000,
    'Cửa xe': 1200000,
    'Mặt nạ xe': 600000,
  };

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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(27.6),
          color: Color(0xFFF2F2F2),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(0, 11.9),
              blurRadius: 7.2982006073,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              margin: EdgeInsets.only(bottom: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, size: 24),
                  ),
                  Text(
                    'Dịch Vụ',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Icon(Icons.settings, size: 24),
                ],
              ),
            ),
            // Service Dropdown
            _buildDropdownButton(
              label: '-- Chọn Dịch Vụ --',
              value: _selectedService,
              items: _services,
              onChanged: (value) {
                setState(() {
                  _selectedService = value;
                  _selectedBrand = null;
                  _selectedModel = null;
                  _selectedVersion = null;
                  _selectedBodyPartType = null;
                });
              },
            ),
            SizedBox(height: 20),
            // Brand Dropdown
            _buildDropdownButton(
              label: '-- Chọn Hãng Xe --',
              value: _selectedBrand,
              items: _brands.keys.toList(),
              onChanged: (value) {
                setState(() {
                  _selectedBrand = value;
                  _selectedModel = null;
                  _selectedVersion = null;
                  _selectedBodyPartType = null;
                });
              },
              isEnabled: _selectedService != null,
            ),
            SizedBox(height: 20),
            // Model Dropdown
            _buildDropdownButton(
              label: '-- Dòng Xe --',
              value: _selectedModel,
              items: _brands[_selectedBrand] ?? [],
              onChanged: (value) {
                setState(() {
                  _selectedModel = value;
                  _selectedVersion = null;
                  _selectedBodyPartType = null;
                });
              },
              isEnabled: _selectedBrand != null,
            ),
            SizedBox(height: 20),
            // Version Dropdown
            _buildDropdownButton(
              label: '-- Phiên Bản Xe --',
              value: _selectedVersion,
              items: _models[_selectedModel] ?? [],
              onChanged: (value) {
                setState(() {
                  _selectedVersion = value;
                  _selectedBodyPartType = null;
                });
              },
              isEnabled: _selectedModel != null,
            ),
            SizedBox(height: 20),
            // Body Part Dropdown
            _buildDropdownButton(
              label: '-- Thân vỏ xe loại --',
              value: _selectedBodyPartType,
              items: _bodyPartPrices.keys.toList(),
              onChanged: (value) {
                setState(() {
                  _selectedBodyPartType = value;
                });
              },
              isEnabled: _selectedVersion != null,
            ),
            Spacer(),
            // Continue Button
            Center(
              child: ElevatedButton(
                onPressed: (_selectedService != null &&
                    _selectedBrand != null &&
                    _selectedModel != null &&
                    _selectedVersion != null &&
                    _selectedBodyPartType != null)
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BillServiceScreen(
                        bodyPart: _selectedBodyPartType!,
                        partPrice: _bodyPartPrices[_selectedBodyPartType!]!,
                        repairCost: _repairCosts[_selectedBodyPartType!]!,
                      ),
                    ),
                  );
                }
                    : null,
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
                  backgroundColor: (_selectedService != null &&
                      _selectedBrand != null &&
                      _selectedModel != null &&
                      _selectedVersion != null &&
                      _selectedBodyPartType != null)
                      ? Colors.blue
                      : Colors.grey,
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
          icon: SvgPicture.asset(
            'assets/vectors/vector_3554_x2.svg',
            width: 15,
            height: 8,
          ),
          items: isEnabled
              ? items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  letterSpacing: 0.4,
                  color: Color(0xFF000000),
                ),
              ),
            );
          }).toList()
              : [],
          onChanged: isEnabled ? onChanged : null,
        ),
      ),
    );
  }
}
