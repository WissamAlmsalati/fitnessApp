import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnes_app/services/authintication.dart';
import 'package:fitnes_app/services/createAnewUser.dart';
import 'package:fitnes_app/views/screens/AuthScreens/registerScreen.dart';
import 'package:fitnes_app/views/screens/HomeScreens/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/icons.dart';
import '../../widgets/authWidgets/registerWidgets.dart';

class LogIn extends StatelessWidget {
   LogIn({super.key});

    final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

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
                controller: _emailController,
                icon: email,
                label: "Email",
              ),
              20.heightBox,
              CoustomTextFiled(
                controller: _passwordController,
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
              onTap: () async {
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();

                if (email.isEmpty || password.isEmpty) {
                  Get.snackbar("Error", "Please fill in all fields");
                } else {
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: email, password: password);  
                    if (userCredential.user != null) {
                      Get.to(NavigationBarScreen());
                    } else {
                      Get.snackbar("Error", "User does not exist. Please register.");
                    }
                  } catch (e) {
                    // If there is an error, show it in a snack bar
                    Get.snackbar("Error", e.toString());
                  }
                }
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
