import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitnes_app/services/createAnewUser.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/icons.dart';


class GenderSelectionScreen extends StatefulWidget {
  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? selectedGender; 
  UserDoc? userDoc;

    final FirebaseAuth _auth = FirebaseAuth.instance;




  @override
  Widget build(BuildContext context) {
    String? _selectedGender;
    return Container(
      width: context.screenWidth * 0.8,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F8F8),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF7F8F8)),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: gender,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          value: _selectedGender,
          items: <String>['Male', 'Female'].map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              UserDoc(uid: _auth.currentUser!.uid, gender: newValue).updateUserData(
                                          _auth.currentUser!.uid,

                gender: newValue,
              );
              _selectedGender = newValue;
            });
          }),
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked;
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      picked = await showCupertinoModalPopup<DateTime>(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              height: 300,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                backgroundColor: Colors.white,
                initialDateTime: _selectedDate,
                minimumDate: DateTime(1900),
                maximumDate: DateTime.now(),
                onDateTimeChanged: (DateTime newDate) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                },
              ),
            ),
          );
        },
      );
    } else {
      picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );
    }

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked ?? DateTime.now();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white, // Set a non-transparent color here
        borderRadius: BorderRadius.circular(14),
        border: Border.all(width: 1, color: Color(0xFFF7F8F8)),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_today),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        onTap: () {
          _selectDate(context);
        },
        controller: TextEditingController(
            text: "${_selectedDate.toLocal()}".split(' ')[0]),
        readOnly: true,
      ),
    );
  }
}

class ChoseWeightOrWidth extends StatelessWidget {
  var Icon;
  String? hintText;
    var controler;

  ChoseWeightOrWidth({super.key, this.Icon, this.hintText , this.controler});
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
      child: TextFormField(
        keyboardType: TextInputType.number,
      controller: controler,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFA1A1A1),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
