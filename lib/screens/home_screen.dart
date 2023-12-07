import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/dropdown_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();
  final DropdownController dropdownController = DropdownController();
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



                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    DropdownButton<String> (
                      isExpanded: true,
                      value: dropdownController.selectedValue,

                      items: dropdownController.dropdownItems.map((String item) {

                        return DropdownMenuItem<String>(

                            value: item,
                            child: Text(item));
                      }).toList(),
                      onChanged: (String ? newValue){
                        dropdownController.setValue(newValue!);
                      },
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