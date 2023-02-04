import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;
      // 슬라이더가 끝까지 갔을 때
      if (nextPage > 4) {
        nextPage = 0;
      }
      // 자동으로 넘겨주기
      controller.animateToPage(
          nextPage, duration: Duration(seconds: 1), curve: Curves.linear);
    });
  }

  // timer가 자동으로 흐르기 때문에 생명 주기가 끝날 때 지워줘야한다. (controller도 동일)
  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 상태바 색상 변경하기
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
        body: PageView(
          controller: controller,
          children: [1, 2, 3, 4, 5]
              .map(
                (idx) =>
                Image.asset(
                  'asset/img/image_$idx.jpeg',
                  fit: BoxFit.fill,
                ),
          )
              .toList(),
        ));
  }
}
