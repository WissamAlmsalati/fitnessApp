import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants/lists.dart';
import '../../widgets/homeScreenWidgets/profileWidjets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button
        title: const Text('Profile').text.bold.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const UserInfo(),
          10.heightBox,
          const UserBoxData(),
          20.heightBox,
          Container(
            width: MediaQuery.of(context).size.width * 0.91,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              shadows:const [
                  BoxShadow(
                  color: Color(0x111D1617),
                  blurRadius: 40,
                  offset: Offset(0, 10),
                  spreadRadius: 0,
                )
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
                  children: List.generate(4, (index) => Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AccountSettingsStrings[index]).text.size(10).make(),

                      ],
                    ),
                  ))
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
