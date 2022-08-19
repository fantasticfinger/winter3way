import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: const Text('winter 3way', style : TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20)),
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
      ),
      body: ListView(
        children: [
          _title(),
          _content(),
        ]
      ),
    );
  }

  Widget textWidget(String str, TextStyle style){
    return Row(
      children: [
        Text(
          str,
          style: style,
        )
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

}