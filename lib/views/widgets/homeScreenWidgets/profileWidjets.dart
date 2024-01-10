import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/lists.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          10.widthBox,
          CircleAvatar(
            radius: 40,
          ),
          10.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name'),
              5.heightBox,
              Text('Your Program'),
            ],
          ),
          Spacer(),
          Container(
            width: 83,
            height: 40,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1.00, 0.08),
                end: Alignment(1, -0.08),
                colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(99),
              ),
            ),
            child: Text("Edit").text.white.makeCentered(),
          ),
          10.widthBox,
        ],
      ),
    );
  }
}

class UserBoxData extends StatefulWidget {
  const UserBoxData({super.key});

  @override
  State<UserBoxData> createState() => _UserBoxDataState();
}

class _UserBoxDataState extends State<UserBoxData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(3, (index) => Container(
        width: 105,
        height: 75,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x111D1617),
              blurRadius: 40,
              offset: Offset(0, 10),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(UestInfoData2[index]).text.size(15).bold.color(Colors.blueAccent).make(),
            Text(UestInfoData1[index]),
          ],
        ),
      )
      ),
    );
  }
}

