import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController Controller;
  final String hint;
  final int maxLines;
  const CustomTextField({Key? key,
    required this.Controller,
    required this.hint,
    this.maxLines = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:Controller,
      decoration: InputDecoration(
        hintText: hint ,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          )),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ))),
        validator: (val){
        if(val==null || val.isEmpty){
          return 'Enter your $hint';
        }
        return null;
        },
       maxLines: maxLines,
    );
  }
}
