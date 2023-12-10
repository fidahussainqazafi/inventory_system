import 'package:flutter/material.dart';

class FormContainerWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController ? controller;
  const FormContainerWidget({Key? key, required this.hintText,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
