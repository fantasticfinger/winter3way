import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../page/post_detail_screen.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget textWidget(String str, TextStyle style){
    return Row(
      children: [
        Text(
          str,
          style: style,
        ),
      ],
    );
  }
  Widget _content(){
    return textWidget('테스트 내용입니다\n테스트 내용입니다\n테스트 내용입니다\n', contentStyle);
  }
  Widget _title(){
    return textWidget('테스트 제목입니다', titleStyle);
  }

  final TextStyle titleStyle= const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20);
  final TextStyle contentStyle= const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const PostDetailScreen()),
      child: Container(
        margin: const EdgeInsets.only(top:20),
        color: Colors.grey,
        child: Column(
          children: [
            const Divider(color: Colors.black, thickness: 2),
            _title(),
            _content(),
            const Divider(color: Colors.black, thickness: 2),
          ],
        ),
      ),
    );
  }
}