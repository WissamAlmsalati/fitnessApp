import 'package:fitnes_app/views/screens/HomeScreens/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vertical_percent_indicator/vertical_percent_indicator.dart';
import '../../../constants/lists.dart';
import '../../widgets/homeScreenWidgets/homeScreenWidget.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: kToolbarHeight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome back',
                             ).text.size(12).color(Colors.grey).make(),
                            const Text(
                              'Wissam Almsalati',
                            ).text.size(20).bold.make(),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF7F8F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x111D1617),
                                blurRadius: 40,
                                offset: Offset(0, 10),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child:ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                              shadowColor: MaterialStateProperty.all(Colors.transparent),
                              padding: MaterialStateProperty.all(EdgeInsets.zero),
                            ),
                            onPressed: () {
                              Get.to(const NotificationScreen(),transition: Transition.fade,duration: const Duration(milliseconds: 300));

                            },
                            child: const Icon(
                              Icons.notifications_none,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  20.heightBox,
                  const BmiWidget(),
                  30.heightBox,
                  const TargetWidget(),
                  30.heightBox,
                  Align(
                      alignment: Alignment.topLeft,
                      child: const Text("Activity Status").text.size(16).bold.make()),
                  30.heightBox,
                  const ChartWidget(),
                  30.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const VerticalIndecatorWidget(),
                      Column(
                        children: [
                          const SleepWidget(),
                          20.heightBox,
                          const CaloriesWidget(),
                        ],
                      ),
                    ],
                  ),
                  30.heightBox,
                ],
              )),
        ),
      ),
    );
  }
}


