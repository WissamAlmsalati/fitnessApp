import 'package:fitnes_app/views/screens/HomeScreens/activatiy_screen_page.dart';
import 'package:fitnes_app/views/screens/HomeScreens/camer_page.dart';
import 'package:fitnes_app/views/screens/HomeScreens/home_page_page.dart';
import 'package:fitnes_app/views/screens/HomeScreens/profile_screen.dart';
import 'package:fitnes_app/views/screens/HomeScreens/search_screen_page.dart';
import 'package:flutter/cupertino.dart';

List vectoresImage = [
  Image.asset("assets/vectores/Vector.png"),
  Image.asset("assets/vectores/Vector (1).png"),
  Image.asset("assets/vectores/Vector (2).png"),
];

List textForImage = [
  "Improve Shape",
  "Lean & Tone",
  "Lose a Fat",
];

List descriptionForImage = [
"I have a low amount of body fat\nand need / want to build more\nmuscle",
"I’m “skinny fat”. look thin but have\nno shape. I want to add learn\nmuscle in the right way",
"I have over 20 lbs to lose. I want\nto drop all this fat and gain muscle\nmass",
];

List <Widget> ScrenList=[
const HomePagePage(),
const ActivatiyScreenPage(),
const SearchScreenPage(),
const CamerPage(),
const ProfileScreen(),
];

List <String>UestInfoData1=[
 "Height",
  "Weight",
  "Age",
];

List <String>UestInfoData2=[
  "178Cm",
  "70",
  "22Yo",
];

List <String>AccountSettingsStrings=[
  "Personal Data",
  "Achievement",
  "Activity History",
  "Workout Progress",
];
