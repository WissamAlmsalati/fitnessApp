import 'package:fitnes_app/constants/colors.dart';
import 'package:fitnes_app/constants/icons.dart';
import 'package:fitnes_app/views/screens/AuthScreens/setProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/authWidgets/registerWidgets.dart';
import 'login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Text("Hey there!"),
              5.heightBox,
              Text("Create an account").text.bold.size(20).make(),
              30.heightBox,
              CoustomTextFiled(
                icon: personIcon,
                label: "First Name",
              ),
              15.heightBox,
              CoustomTextFiled(
                icon: personIcon,
                label: "Last Name",
              ),
              15.heightBox,
              CoustomTextFiled(
                icon: email,
                label: "Email",
              ),
              20.heightBox,
              CoustomTextFiled(
                icon: password,
                label: "Passeword",
                suffixIcon: hidePass,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 5.0, right: 30.0, bottom: 5.0),
                  child: CoustomCheckAndServices(),
                ),
              ),
              137.heightBox,
              RegisterBouttom(

                onTap: () {
                  Get.to(SetProfile());
                  duration: Duration(milliseconds: 1000);
                  transition: Transition.downToUp;
                },
              ),
              15.heightBox,
              Container(
                height: 20,
                width: context.screenWidth * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 0.5,
                      width: context.screenWidth * 0.35,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Text(
                      "Or",
                    ),
                    Container(
                      height: 0.5,
                      width: context.screenWidth * 0.35,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              22.heightBox,
              GoogleAndFacebook(),
              22.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  5.widthBox,
                  TextButton(
                      onPressed: () {
                        Get.to(LogIn(),
                            transition: Transition.downToUp,
                            duration: Duration(milliseconds: 400));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: purpleColor),
                      )),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}