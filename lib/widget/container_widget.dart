import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color color;
  final Icon icn;
  const ContainerWidget({Key? key, required this.text1, required this.text2, required this.text3, required this.color, required this.icn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 120.w,
      height: 120.h,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icn,
            SizedBox(height: 7.h,),
            Text(text1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 5.h,),
            Text(text2,style: TextStyle(color: Colors.white),),
            SizedBox(height: 5.h,),
            Text(text3,style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
