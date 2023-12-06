import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();
  String selectedValue = 'Choose service';
  List<String> dropdownItems = <String>['MP4', 'MP5'];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text('Inventory'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 600.h,),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext builder) {
                      return AlertDialog(

                        content: Form(
                          key: _formKey,
                          child: Column(
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
                                    Container(
                                      width: 700,
                                      height: 20,
                                      color: Colors.white70,
                                    ),

                                    SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      value: selectedValue,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        border: InputBorder.none, // Remove the background border
                                      ),
                                      // underline: Container(), // Remove the bottom border
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue = newValue!;
                                        });
                                      },
                                      items: dropdownItems
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('Add vehicle'),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
