import 'package:camera/camera.dart';
import 'package:fitnes_app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'views/screens/AuthScreens/registerScreen.dart';

List<CameraDescription> cameras = [];

Future<void> main()async {
    WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  try {
    cameras;
  } on CameraException catch (e) {
    print(e);
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: primaryFont,
      ),
      home: const RegisterScreen(),
    );
  }
}
