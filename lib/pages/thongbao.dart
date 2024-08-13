import 'package:flutter/material.dart';

class Thongbao extends StatelessWidget {
  final List<String> categories = ["Cập nhật", "Đánh giá", "Tin tức", "Khác"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông báo'),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: categories.length,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                tabs: categories.map((String category) {
                  return Tab(text: category);
                }).toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: categories.map((String category) {
                  return Center(
                    child: _buildCategoryContent(category),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Hàm này sẽ xây dựng nội dung cho mỗi mục
  Widget _buildCategoryContent(String category) {
    // Thay thế bằng nội dung thực tế của bạn
    return ListView.builder(
      itemCount: 20, // Số lượng thông báo bạn muốn hiển thị
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$category thông báo $index'),
          subtitle: Text('Chi tiết về $category thông báo $index'),
        );
      },
    );
  }
}
