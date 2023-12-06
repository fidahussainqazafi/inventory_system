import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventory_system/controller/dropdown_controller.dart';

import 'package:provider/provider.dart';

import 'controller/bottom_nav_controller.dart';
import 'widget/bottom_nav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(390,844),
    builder: (context, child) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => BottonNavController()),
            ChangeNotifierProvider(create: (context)=> DropdownController()),

          ],
    child: MaterialApp(
      title: 'Inventory System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BottomNavigationScreen(),
    )
      );
        }
    );
  }
}
