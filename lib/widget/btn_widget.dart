import 'package:flutter/material.dart';
class BtnWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;


  const BtnWidget({Key? key,required this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            )

        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,
            fontSize: 20,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
