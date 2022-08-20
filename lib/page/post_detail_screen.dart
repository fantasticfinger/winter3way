import 'package:flutter/material.dart';
import 'package:winter_3way/component/post_common_widget.dart';
import 'package:winter_3way/component/comment_widget.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        titleSpacing: 0,
        toolbarHeight : 40,
        title: const Text('winter 3way', style : TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20)),
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
      ),
      body:
      ListView(
        children: [
          _title(),
          _nickname(),
          _timeList(),
          _contentDivider(),
          _content(),
          _commentDivider(),
          _commentList(),
        ]
      ),
      bottomSheet : Row(
        children: const [
          Expanded(
            child: Padding(padding: EdgeInsets.only(left:10),
              child: TextField(
                decoration: InputDecoration(
                hintText:'댓글을 남겨주세요.',
              ),
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right:10),
            child: Text('등록',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      )
    );
  }

  Widget _title(){
    return textWidget('테스트 제목입니다', titleStyle);
  }
  Widget _nickname(){
    return textWidget('닉네임', nicknameStyle);
  }
  Widget _timeList(){
    return textWidget('방금', nicknameStyle);
  }
  Widget _contentDivider(){
    return const Divider(
      height: 20.0,
      color: Colors.grey,
      thickness: 1
    );
  }
  Widget _content(){
    return textWidget('테스트 내용입니다\n테스트 내용입니다\n테스트 내용입니다\n', contentStyle);
  }
  Widget _commentDivider(){
    return const Divider(
      height: 40.0,
      color: Colors.grey,
      thickness: 5,
    );
  }
  Widget _commentList(){
    return Column(children: List.generate(50, (index) => Column(
      children:
      const [
        Padding(padding: EdgeInsets.only(top:10), child: CommentWidget(Colors.teal)),
        Padding(padding: EdgeInsets.only(left: 10), child: CommentWidget(Colors.cyan))
      ],
    )).toList(),
    );
  }
}