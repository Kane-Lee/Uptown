import 'package:flutter/material.dart';
import 'package:uptown/components/postBox.dart';

class DistrictScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [


        PostBox(
            lounge: '서구',
            title: '이촌옥 불고기 존맛',
            contents: '형들 이번에 청라에 분양하는 푸르지오 청약할까?',
            nickName: '부동산벼락부자',
            view: 1500,
            recommend: 123,
            comments: 25,
            time: '8시간 전'),
      ],
    );
  }
}
