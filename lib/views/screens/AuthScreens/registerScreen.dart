import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnes_app/constants/colors.dart';
import 'package:fitnes_app/constants/icons.dart';
import 'package:fitnes_app/services/authintication.dart';
import 'package:fitnes_app/services/createAnewUser.dart';
import 'package:fitnes_app/views/screens/AuthScreens/setProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';


import '../../widgets/authWidgets/registerWidgets.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

 final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

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
                controller: _nameController,
                icon: personIcon,
                label: "First Name",
              ),
              15.heightBox,
              CoustomTextFiled(
                controller: _lastNameController,
                icon: personIcon,
                label: "Last Name",
              ),
              15.heightBox,
              CoustomTextFiled(
                icon: email,
                label: "Email",
                controller: _emailController,
              ),
              20.heightBox,
              CoustomTextFiled(
                icon: password,
                label: "Passeword",
                controller: _passwordController,
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
                onTap: () async {
                  String email = _emailController.text.trim();
                  String name = _nameController.text.trim();
                  String lastName = _lastNameController.text.trim();
                  String password = _passwordController.text.trim();
                  if (email.isEmpty || password.isEmpty || name.isEmpty || lastName.isEmpty) {
                    Get.snackbar("Error", "Please fill in all fields");
                  } else {
                    UserCredential userCredential = await AuthinticantioService().signUp(email, password);
                    String uid = userCredential.user!.uid;
                   UserDoc userDoc = UserDoc(
  uid: uid,
  email: email,
  firstname: name,
  lastname: lastName,
);
await userDoc.createUserData(); // Wait for user data creation to finish
Get.to(const SetProfile());
                  }
                }
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
                  const  Text(
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
            const  GoogleAndFacebook(),
              22.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text("Already have an account?"),
                  5.widthBox,
                  TextButton(
                      onPressed: () {
                        Get.to(LogIn(),
                            transition: Transition.downToUp,
                            duration:const Duration(milliseconds: 400));
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