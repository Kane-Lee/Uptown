import 'package:flutter/material.dart';
import 'package:uptown/components/postBox.dart';

class AdditionalScreen extends StatelessWidget {
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
            lounge: '인천',
            title: '낼 골프치러 가는데 비 안오겠지ㅜㅜ',
            contents: '형들 이번에 청라에 분양하는 푸르지오 청약할까?',
            nickName: '부동산벼락부자',
            view: 1500,
            recommend: 123,
            comments: 25,
            time: '2시간 전'),
        PostBox(
            lounge: '서구',
            title: '이촌옥 불고기 존맛',
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
            time: '2시간 전'),
      ],
    );
  }
}
