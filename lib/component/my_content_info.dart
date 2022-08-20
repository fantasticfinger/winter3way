
import 'package:flutter/material.dart';

import 'my_content_detail_info.dart';

class MyContentInfo extends StatelessWidget {
  const MyContentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text("짱짱 성수"),
          MyContentDetailInfo(title:"게시물 수", info: "10개"),
          MyContentDetailInfo(title:"댓글 수", info: "20개"),
        ],
      ),
    );
  }

}