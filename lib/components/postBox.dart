import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uptown/constants.dart';

class PostBox extends StatelessWidget {
  final String lounge;
  final String title;
  final String contents;
  final String nickName;
  final int view;
  final int recommend;
  final int comments;
  final String time;

  PostBox({this.lounge, this.title, this.contents, this.nickName, this.view, this.recommend,this.comments, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Container(
          color: kPostBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Material(
                      color: kPostLoungeBoxColor,
                      borderRadius: BorderRadius.circular(30.0),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0.5),
                        child: Text(lounge),
                      )),
                ),
                Text(title,
                    style: kPostTitleTextStyle),
                Text(contents,
                    style: kPostContentsTextStyle),
                SizedBox(height: 22.0),
                Text(nickName),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(FontAwesomeIcons.eye),
                    Text(view.toString()),
                    FaIcon(FontAwesomeIcons.thumbsUp),
                    Text(recommend.toString()),
                    FaIcon(FontAwesomeIcons.comment),
                    Text(comments.toString()),
                    SizedBox(width: 70.0),
                    Text(time),
                    FaIcon(FontAwesomeIcons.bookmark),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

