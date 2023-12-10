import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inventory_system/screens/manage_users_screen.dart';
import 'package:provider/provider.dart';

import '../controller/dropdown_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DropdownController dropdownController = DropdownController();

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text('Inventory'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 600.h,),
            // Add your other widgets here
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext builder) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.withOpacity(.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller,
                            decoration: InputDecoration(
                              hintText: 'Vehicle Name',
                              border: InputBorder.none, // Remove the underline
                            ),
                          ),
                          SizedBox(height: 30.h,),

                        ],
                      ),
                    ),
                    Consumer<DropdownController>(
                      builder: (context, controller, child) {
                        return DropdownButton<String>(
                          isExpanded: true,
                          value: controller.selectedValue,
                          items: controller.dropdownItems.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            controller.setValue(newValue!);
                          },
                        );
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog on "Cancel" button press
                          },
                          child: Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {

                            // You can call your addVehicleNameAndType function from dropdownController
                            // Example: dropdownController.addVehicleNameAndType(controller.text, dropdownController.selectedValue);
                            dropdownController.addVehicleNameAndType(context,
                                controller.text,
                              dropdownController.selectedValue
                            );

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageUsers())); // Close the dialog on "Add" button press
                          },
                          child: Text('Add'),
                        ),
                      ],
                    ),

                  ],
                ),
              );
            },
          );
        },
        child: Center(child: Text('Add vehicle')),
      ),
    );
  }
}
