import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShortsWidget extends StatelessWidget {
  String thumbPath;
  double? size;
  String text;

  ShortsWidget({
    Key? key,
    required this.thumbPath,
    this.size = 130,
    this.text = "테스트 제목입니다. 저의 질문은 이것입니다."
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _thumbnailWidget();
  }

  Widget _thumbnailWidget(){
    double height = size! * 1.5;
    return SizedBox(
      width: size,
      height: height,
      child:
      Column(
        children:[
          Expanded(child:
            CachedNetworkImage(
              imageUrl: thumbPath,
              fit: BoxFit.cover,
            )
          ),
          Text(text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),)
        ],
      ),
    );
  }
}
