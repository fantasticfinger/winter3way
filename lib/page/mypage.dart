import 'package:flutter/material.dart';
import 'package:winter_3way/component/post_widget.dart';

import '../component/my_content_info.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("MyPage"),
            centerTitle: true,
            actions: const [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: null,
              )
            ]),
        body: ListView(children: const [
          MyContentInfo(),
          PostWidget(),
          PostWidget(),
        ]));
  }
}
