import 'package:fitnes_app/constants/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Notification'),
            centerTitle: true,
            leading:Container(
              width: 32,
              height: 32,
              decoration: ShapeDecoration(
                color: const Color(0xFFF7F8F8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: arrow,
              ),
            ),
            actions: [
              Container(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F8F8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),

              ),
            ],
          ),
        ),

    );
  }
}
