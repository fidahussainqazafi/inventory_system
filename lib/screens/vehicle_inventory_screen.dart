import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventory_system/widget/container_widget.dart';
import 'package:inventory_system/widget/row_widget.dart';

class vehicleInventoryScreen extends StatefulWidget {
  const vehicleInventoryScreen({Key? key}) : super(key: key);

  @override
  State<vehicleInventoryScreen> createState() => _vehicleInventoryScreenState();
}

class _vehicleInventoryScreenState extends State<vehicleInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    color: Colors.white,
                    width: 300.w,
                    height: 300.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 20,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
            
                            SizedBox(height: 20.h,),
                            ContainerWidget(
                                text1: '\$2380',
                                text2: 'Today Sale',
                                text3: '',
                                color: Colors.purple,
                                icn: Icon(Icons.account_box,color: Colors.white,)),
                            SizedBox(width: 20.w,),
                            ContainerWidget(
                                text1: '\$2380',
                                text2: 'Today Sale',
                                text3: '',
                                color: Colors.pinkAccent,
                                icn: Icon(Icons.account_box,color: Colors.white,)),
            
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerWidget(
                                text1: '\$2380',
                                text2: 'Today Sale',
                                text3: '',
                                color: Colors.cyan,
                                icn: Icon(Icons.account_box,color: Colors.white,)),
                            SizedBox(width: 20.w,),
                            ContainerWidget(
                                text1: '\$2380',
                                text2: 'Today Sale',
                                text3: '',
                                color: Colors.yellow,
                                icn: Icon(Icons.account_box,color: Colors.white,)),
            
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                RowWidget(),
                SizedBox(height: 10,),
                RowWidget(),
                SizedBox(height: 10,),
                RowWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
