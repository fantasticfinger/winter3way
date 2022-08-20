import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _appbar(),
          _title(),
          _description(),
        ],
      ),
    );
  }

  Widget _appbar() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
                padding: const EdgeInsets.all(15.0),
                child: const Icon(Icons.arrow_back_ios_sharp)
            ),
          ),
          const Text("교차로 생성기"),
          GestureDetector(
            onTap: (){
              //todo 어딘가로 이동해야함
            },
            child: Container(
                padding: const EdgeInsets.all(15.0),
                child: const Icon(Icons.post_add_outlined)
            ),
          ),
        ]);
  }

  Widget _title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text("Title"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a Title',
            ),
          ),
        ),
      ],
    );
  }

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Description",
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a Description',
            ),
            keyboardType: TextInputType.multiline,
            maxLines: 6,
          ),
        ),
      ],
    );
  }
}
