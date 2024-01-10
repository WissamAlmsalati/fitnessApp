import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/icons.dart';

class GenderSelectionScreen extends StatefulWidget {
  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? selectedGender; // Variable to store the selected gender

  @override
  Widget build(BuildContext context) {
    String? _selectedGender;
    return  Container(
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
              _selectedGender = newValue;
            });
          }),
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  DateTime _selectedDate = DateTime.now();


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }


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
        controller: TextEditingController(text: "${_selectedDate.toLocal()}".split(' ')[0]),
        readOnly: true,
      ),
    );
}
}


class ChoseWeightOrWidth extends StatefulWidget {
  var Icon;
  String? hintText;
   ChoseWeightOrWidth({super.key , this.Icon , this.hintText});

  @override
  State<ChoseWeightOrWidth> createState() => _ChoseWeightOrWidthState();
}

class _ChoseWeightOrWidthState extends State<ChoseWeightOrWidth> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: context.screenWidth * 0.8,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F8F8),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF7F8F8)),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: widget.Icon,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(17),
          ),
          hintText: widget.hintText,
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
