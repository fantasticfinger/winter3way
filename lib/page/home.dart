import 'package:flutter/material.dart';
import 'package:winter_3way/component/avatar_widget.dart';
import 'package:winter_3way/component/post_widget.dart';

import '../component/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(
          width: 5,
        ),
        ...List.generate(
          100,
          (index) => AvatarWidget(
              type: AvatarType.RED,
              thumbPath:
                  'https://images.ctfassets.net/hrltx12pl8hq/3j5RylRv1ZdswxcBaMi0y7/b84fa97296bd2350db6ea194c0dce7db/Music_Icon.jpg'),
        ),
      ]),
    );
  }

  Widget _postList(){
    return Column(children: List.generate(50, (index) => const PostWidget()).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ImageData(IconsPath.logo, width: 270),
        actions: [
          GestureDetector(
            onTap: () {},
            child: ImageData(
              IconsPath.directMessage,
              width: 50,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}
