import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnes_app/services/createAnewUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../constants/icons.dart';
import '../../widgets/authWidgets/registerWidgets.dart';
import '../../widgets/authWidgets/setprofileWidget.dart';
import 'goalsPageView.dart';

class SetProfile extends StatefulWidget {
  const SetProfile({Key? key});

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  bool isKeyboardVisible = false;
  late KeyboardVisibilityController _keyboardVisibilityController;

  TextEditingController _weight = TextEditingController();
  TextEditingController _height = TextEditingController();

  final _auth = FirebaseAuth.instance;

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
                    Text("Let's set up your profile").text.bold.size(22).make(),
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
                    controler: _weight,
                      Icon: weight,
                      hintText: "Weight",
                    ),
                    15.heightBox,
                    ChoseWeightOrWidth(
                      controler: _height,
                      Icon: height,
                      hintText: "Height",
                    ),
                    30.heightBox,
                    RegisterBouttom(
                      onTap: () async{
                        try{
                          if(_auth.currentUser != null)
                         await _auth.currentUser!.reload();
                         await  UserDoc(
                          uid: _auth.currentUser!.uid,
                          weight: _weight.text,
                          height: _height.text,
                        ).updateUserData(
                          _auth.currentUser!.uid,
                          weight: _weight.text,
                          height: _height.text,
                        );
                        Get.to(GoalsPageView());
                        }catch(e){
                          Get.snackbar("Error", e.toString());
                        }                      
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
