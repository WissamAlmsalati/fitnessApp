import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/homeScreenWidgets/profileWidjets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            const AccountSettingWidget(),
            20.heightBox,
            const NotificationWidget(),
            20.heightBox,
            const OtherWidget(),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
