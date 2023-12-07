import 'package:flutter/material.dart';
import 'package:inventory_system/screens/vehicle_inventory_screen.dart';


class ManageUsersScreen extends StatefulWidget {
  const ManageUsersScreen({Key? key}) : super(key: key);

  @override
  State<ManageUsersScreen> createState() => _ManageUsersScreenState();
}

class _ManageUsersScreenState extends State<ManageUsersScreen> {





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('dropdown'),
      ),
      body: Column(children: [
        Container(
          child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>vehicleInventoryScreen()));
              },
              child: Text('MainScreen')),
        )
      ],),
    );
  }
}
