import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../constants/icons.dart';
import '../../widgets/authWidgets/registerWidgets.dart';
import '../../widgets/authWidgets/setprofileWidget.dart';
import 'goalsPageView.dart';
import 'login.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({Key? key});

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  bool isKeyboardVisible = false;
  late KeyboardVisibilityController _keyboardVisibilityController;

  @override
  void initState() {
    super.initState();

    _keyboardVisibilityController = KeyboardVisibilityController();

    // Listen to keyboard visibility changes
    _keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        isKeyboardVisible = visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(

          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.only(bottom: isKeyboardVisible ? 20 : 0),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Center(
                child: Column(
                  children: [
                    60.heightBox,
                    Image.asset(
                      "assets/vectores/Layer 2.png",
                      height: 200,
                      width: 200,
                    ),
                    30.heightBox,
                    Text("Let's set up your profile")
                        .text
                        .bold
                        .size(22)
                        .make(),
                    Text("It will help us to know you better")
                        .text
                        .color(Colors.grey)
                        .size(13)
                        .make(),
                    30.heightBox,
                    GenderSelectionScreen(),
                    15.heightBox,
                    DatePicker(),
                    15.heightBox,
                    ChoseWeightOrWidth(
                      Icon: weight,
                      hintText: "Weight",
                    ),
                    15.heightBox,
                    ChoseWeightOrWidth(
                      Icon: height,
                      hintText: "Height",
                    ),
                    30.heightBox,
                    RegisterBouttom(
                      onTap: () {
                        Get.to(GoalsPageView());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}