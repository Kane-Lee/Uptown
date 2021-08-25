import 'package:flutter/material.dart';
import 'package:uptown/components/postBox.dart';

class TownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostBox(
            lounge: '청라국제도시',
            title: '청라 푸르지오 노리는사람?',
            contents: '형들 이번에 청라에 분양하는 푸르지오 청약할까?',
            nickName: '부동산벼락부자',
            view: 1500,
            recommend: 123,
            comments: 25,
            time: '2시간 전'),
        PostBox(
            lounge: '청라국제도시',
            title: '너네 노진혁 청라사는거 아냐',
            contents: '형들 이번에 청라에 분양하는 푸르지오 청약할까?',
            nickName: '부동산벼락부자',
            view: 1500,
            recommend: 123,
            comments: 25,
            time: '9시간 전'),
      ],
    );
  }
}
