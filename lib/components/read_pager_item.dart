import 'package:flutter/material.dart';
import 'package:seek_book/components/battery_icon.dart';
import 'package:seek_book/utils/screen_adaptation.dart';

/// 翻页阅读的每页组件
class ReadPagerItem extends StatelessWidget {
  var pageWidth = vw(100);
  var pageHeight = ScreenAdaptation.screenHeight;

  final text;
  final title = "标题";

  ReadPagerItem({this.text});

  @override
  Widget build(BuildContext context) {
    var smallTextColor = Color(0xff807C7A);
    var smallTextStyle = TextStyle(color: smallTextColor, fontSize: dp(14.5));

    return Container(
      padding: EdgeInsets.symmetric(horizontal: dp(16)),
      decoration: BoxDecoration(color: Color(0xffEAE5E0)),
      child: Column(
        children: <Widget>[
          Container(
            height: dp(37),
            alignment: Alignment.topLeft,
//            color: Colors.green,
            padding: EdgeInsets.only(top: dp(11)),
            child: Text(
              title,
              style: TextStyle(
                color: smallTextColor,
                fontSize: dp(14.2),
              ),
            ),
          ),
          Expanded(
            child: text,
          ),
          Container(
            height: dp(44),
//            color: Colors.green.withOpacity(0.2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BatteryIcon(),
                Expanded(
                    child: Text(
                  '10:15',
                  style: smallTextStyle,
                )),
                Text(
                  '8/9',
                  style: smallTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
