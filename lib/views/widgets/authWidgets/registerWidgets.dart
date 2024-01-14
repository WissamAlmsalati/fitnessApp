import 'package:fitnes_app/views/screens/AuthScreens/setProfile.dart';
import 'package:fitnes_app/views/screens/HomeScreens/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/icons.dart';
import '../../screens/AuthScreens/login.dart';

class CoustomTextFiled extends StatelessWidget {
  var icon;
  var label;
  var suffixIcon;
  var controller;

  CoustomTextFiled({super.key, this.icon, this.label, this.suffixIcon , this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.8,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F8F8),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF7F8F8)),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: icon,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: suffixIcon,
          ),
          labelText: label,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      ),
    );
  }
}

class CoustomCheckAndServices extends StatefulWidget {
  const CoustomCheckAndServices({super.key});

  @override
  State<CoustomCheckAndServices> createState() =>
      _CoustomCheckAndServicesState();
}

class _CoustomCheckAndServicesState extends State<CoustomCheckAndServices> {
  @override
  Widget build(BuildContext context) {
    bool _isCheck = false;

    return Row(
      children: [
        Checkbox(
            value: _isCheck, // Use the state variable here
            onChanged: (value) {
              setState(() {
                Get.to(() => NavigationBarScreen());
                _isCheck = value!; // Change the state variable here
              });
            }),
        const Expanded(
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  text: "I agree to the ",
                  children: [
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " and ",
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RegisterBouttom extends StatefulWidget {
  String? text;
  Function() onTap;


  RegisterBouttom({super.key, this.text, required this.onTap,  });

  @override
  State<RegisterBouttom> createState() => _RegisterBouttomState();
}

class _RegisterBouttomState extends State<RegisterBouttom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: 315,
        height: 60,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x4C95ADFE),
              blurRadius: 22,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 315,
                height: 60,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, 0.08),
                    end: Alignment(1, -0.08),
                    colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 124,
              top: 18,
              child: Text(
                widget.text ?? "Register",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoogleAndFacebook extends StatefulWidget {
  const GoogleAndFacebook({super.key});

  @override
  State<GoogleAndFacebook> createState() => _GoogleAndFacebookState();
}

class _GoogleAndFacebookState extends State<GoogleAndFacebook> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.80, color: Color(0xFFDDD9DA)),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: facebookLogo,
          ),
        ),
        30.widthBox,
        Container(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.80, color: Color(0xFFDDD9DA)),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: googleLogo,
          ),
        ),
      ],
    );
  }
}


