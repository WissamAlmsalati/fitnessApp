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
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          20.widthBox,
          const CircleAvatar(
            radius: 40,
          ),
          20.widthBox,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name'),
              5.heightBox,
              const Text('Your Program'),
            ],
          ),
          const Spacer(),
          Container(
            width: 83,
            height: 40,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(-1.00, 0.08),
                end: Alignment(1, -0.08),
                colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
              ),
              shadows: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(99),
              ),
            ),
            child: const Text("Edit").text.white.makeCentered(),
          ),
          20.widthBox,
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
      children: List.generate(
          3,
          (index) => Container(
                width: 105,
                height: 75,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(UestInfoData2[index])
                        .text
                        .size(15)
                        .bold
                        .color(Colors.blueAccent)
                        .make(),
                    Text(UestInfoData1[index]),
                  ],
                ),
              )),
    );
  }
}

class AccountSettingWidget extends StatefulWidget {
  const AccountSettingWidget({super.key});

  @override
  State<AccountSettingWidget> createState() => _AccountSettingWidgetState();
}

class _AccountSettingWidgetState extends State<AccountSettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.91,
      height: MediaQuery.of(context).size.height * 0.26,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text("Account Settings").text.size(20).bold.make(),
          ),
          Column(
              children: List.generate(
                  AccountSettingsStrings.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AccountSettingsStrings[index])
                                .text
                                .size(10)
                                .make(),
                          ],
                        ),
                      )))
        ],
      ),
    );
  }
}

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: const Text("Notification").text.size(20).bold.make(),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Pop-Up Notification"),
              80.widthBox,
              Switch(value: true, onChanged: (Value) {}),
            ],
          ),
        ],
      ),
    );
  }
}

class OtherWidget extends StatefulWidget {
  const OtherWidget({super.key});

  @override
  State<OtherWidget> createState() => _OtherWidget();
}

class _OtherWidget extends State<OtherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.91,
      height: MediaQuery.of(context).size.height * 0.21,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text("Account Settings").text.size(20).bold.make(),
          ),
          Column(
              children: List.generate(
                  OtherWidgetText.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(OtherWidgetText[index]).text.size(10).make(),
                          ],
                        ),
                      )))
        ],
      ),
    );
  }
}
