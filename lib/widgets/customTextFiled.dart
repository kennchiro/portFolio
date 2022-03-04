import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {

  final String name;
  final int maxLine;
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  final TextInputType textInputType;
  bool isObsecure = true;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.maxLine,
    required this.name,
    required this.data,
    required this.hintText,
    required this.textInputType,
    required this.isObsecure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLines: maxLine,
        name: name,
        keyboardType: textInputType,
        style: TextStyle(
          color: Colors.white60,
        ),
        controller: controller,
        obscureText: isObsecure,
        decoration: InputDecoration(
          hintStyle: TextStyle(
              color: Colors.white60,
              fontSize: 13,
              fontWeight: FontWeight.normal,
              fontFamily: 'OpenSansCondensed'),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white10,
          hintText: hintText,
          contentPadding: const EdgeInsets.all(16.0),
          prefixIcon: Container(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            child: Icon(data, color: Colors.white54),
          ),
        ),
      ),
    );
  }
}
