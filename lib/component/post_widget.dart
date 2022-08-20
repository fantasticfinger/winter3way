import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../page/post_detail_screen.dart';
import 'package:winter_3way/component/post_common_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  final double size = 100.0;
  final String thumbPath = "https://www.newzealand.com/assets/Tourism-NZ/Ruapehu/51d0ba95f5/img-1536201737-283-8045-E01209C7-B8F8-0403-B5562511EFCE5293__aWxvdmVrZWxseQo_FocalPointCropWzQyMCw5NjAsNTAsNTQsNzUsImpwZyIsNjUsMi41XQ.jpg";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const PostDetailScreen()),
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 2),
          color: Colors.grey
        ),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all( 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(children: [
                    _title(),
                    _content(),
                  ]),
                ),
                SizedBox(
                  width: size,
                  height: size,
                  child: CachedNetworkImage(
                    imageUrl: thumbPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }

  Widget _title(){
    return textWidget('테스트 제목입니다', titleStyle);
  }
  Widget _content(){
    return textWidget('테스트 내용입니다\n테스트 내용입니다\n테스트 내용입니다\n', contentStyle);
  }
}