import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inventory_system/controller/dropdown_controller.dart';
import 'package:inventory_system/model/name_and_type_model.dart';
import 'package:inventory_system/widget/btn_widget.dart';
import 'vehicle_inventory_screen.dart';

class ManageUsers extends StatefulWidget {
  const ManageUsers({Key? key}) : super(key: key);

  @override
  State<ManageUsers> createState() => _ManageUsersState();
}

class _ManageUsersState extends State<ManageUsers> {
  final DropdownController dropDownController = DropdownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recied data from firebase'),
      ),
      body: Column(
        children: [
        // recied data from firebase here vehicle name and type and show here
          FutureBuilder<List<NameAndTypeModel>>(

              future: dropDownController.fetchVehicleNameAndType(),
              builder: (context,snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if(snapshot.hasError){
                  return Text('Error ${snapshot.error}');
                }

                else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                      itemBuilder: (context, index){

                      final item = snapshot.data![index];
                      if (kDebugMode) {
                        print(snapshot.data!.length.toString());
                      }
                      return Container(
                        width: 300,
                        height: 100,
                        color: Colors.purple,
                        child: ListTile(

                          title: Text(item.vehicleName,style: TextStyle(color: Colors.blue),),
                          subtitle: Text(item.type,style: TextStyle(color: Colors.black),),
                        ),
                      );
                      });
                }
              }),
        SizedBox(height: 450,),

         Padding(
           padding: const EdgeInsets.all(20.0),
           child: BtnWidget(
               text: 'Go to Main Screen',
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>vehicleInventoryScreen()));
               }),
         )
      ],),
    );
  }
}
