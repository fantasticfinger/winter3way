import 'package:flutter/material.dart';
import 'package:winter_3way/component/post_common_widget.dart';



class CommentWidget extends StatelessWidget {
  final Color col;
  const CommentWidget(this.col, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: col,
        child: Column(
          children: [
            _nickname(),
            _content(),
            _timeList()
          ],
        )
    );
  }

  Widget _nickname(){
    return textWidget('닉네임', nicknameStyle);
  }
  Widget _content(){
    return textWidget('테스트 내용입니다\n테스트 내용입니다\n테스트 내용입니다', contentStyle);
  }
  Widget _timeList(){
    return textWidget('방금', nicknameStyle);
  }
}