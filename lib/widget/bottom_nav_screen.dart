import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../controller/bottom_nav_controller.dart';
import '../screens/home_screen.dart';
import '../screens/manage_users_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/users_profile_screen.dart';




class BottomNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottonNavController>(context);
    int currentIndex = bottomNavBarProvider.currentIndex;

    final List<Widget> _screens = [
      const HomeScreen(),
      const NotificationScreen(),
      const ManageUsersScreen(),
      const UsersProfileScreen(),

    ];
    return Scaffold(
      backgroundColor:Colors.cyan,
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.cyan
        , // Change the background color here
        currentIndex: currentIndex,
        onTap: (int index) {
          bottomNavBarProvider.setCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 20.sp,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 20.sp,),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.manage_accounts),
            //Icon(Icons.production_quantity_limits),
            label: 'Manage Users',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
