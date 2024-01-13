import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
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
        automaticallyImplyLeading: false,
        title: const Text('Profile').text.bold.make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserInfo(),
            10.heightBox,
            const UserBoxData(),
            20.heightBox,
            AccountSettingWidget(),
            20.heightBox,
            NotificationWidget(),
            20.heightBox,
            OtherWidget(),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
