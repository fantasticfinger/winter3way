import 'package:flutter/material.dart';
import 'package:winter_3way/component/shorts_widget.dart';
import 'package:winter_3way/component/avatar_widget.dart';
import 'package:winter_3way/component/post_widget.dart';

import '../component/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
          Container(
            margin: const EdgeInsets.only(top: 10),
            child:_postList(),
          ),
          _shortsList(),
          _postList(),
        ],
      ),
    );
  }

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
              thumbPath: 'https://creatip.co.kr/wp-content/uploads/2019/03/vivaldi-logo.jpg'
          ),
        )
      ]),
    );
  }

  Widget _postList(){
    return Column(children: List.generate(4, (index) => const PostWidget()).toList(),);
  }

  Widget _shortsList(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(
          width: 5,
        ),
        ...List.generate(
          20, (index) =>
            GestureDetector(
              // onTap: ,
                child : Container(
                    margin: const EdgeInsets.all(5),
                    child :
                    ShortsWidget(
                        thumbPath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Shakedown_2008_Figure_1a.jpg/284px-Shakedown_2008_Figure_1a.jpg'
                    )
                )
            )
        ),
      ]),

    );
  }
}
