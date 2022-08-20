import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum AvatarType { GREEN, YELLOW, RED }

class AvatarWidget extends StatelessWidget {
  String thumbPath;
  String? nickName;
  AvatarType type;
  double? size;

  AvatarWidget({
    Key? key,
    required this.type,
    required this.thumbPath,
    this.nickName,
    this.size = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.GREEN:
        return greenWidget();
      case AvatarType.YELLOW:
        return yellowWidget();
      case AvatarType.RED:
        return redWidget();
    }
  }

  Widget trafficWidget(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: innerThumbnailWidget(),
    );
  }

  Widget innerThumbnailWidget() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(
            imageUrl: thumbPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget greenWidget(){
    return trafficWidget(Colors.green);
  }
  Widget yellowWidget() {
    return trafficWidget(Colors.yellow);
  }
  Widget redWidget() {
    return trafficWidget(Colors.red);
  }
}
