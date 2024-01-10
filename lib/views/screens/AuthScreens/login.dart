import 'package:fitnes_app/views/screens/AuthScreens/registerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/icons.dart';
import '../../widgets/authWidgets/registerWidgets.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(children: [
              Text("Hey there!"),
              5.heightBox,
              Text("Create an account").text.bold.size(20).make(),
              30.heightBox,
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
              317.heightBox,
              RegisterBouttom(
                text: "Log In",
                onTap: () {
                  Get.to(RegisterScreen());

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
              15.heightBox,
              GoogleAndFacebook(),
              15.heightBox,
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don'n have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(RegisterScreen(),
                            transition: Transition.upToDown,
                            duration: Duration(milliseconds: 400));
                      },
                      child: Text("Register"),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
