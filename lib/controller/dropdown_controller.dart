import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:inventory_system/model/name_and_type_model.dart';

class DropdownController extends ChangeNotifier {

var dropdownItems = ['MP4','MP5'];

var  selectedValue = 'MP4';

 void setValue(value) {

   selectedValue = value;
    notifyListeners();

 }

    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
   Future<void> addVehicleNameAndType(BuildContext context,
       String vehicleName,
       String type,) async {
     try {
       NameAndTypeModel nameAndTypeModel = NameAndTypeModel(
           vehicleName: vehicleName,
           type: type);
        await FirebaseFirestore.instance.collection('VehicleNameAndType').add(nameAndTypeModel.toMap());
     } catch(e){

       ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(
           content: Text('Error: $e'),
         ),
       );
     }

   }


Future<List<NameAndTypeModel>> fetchVehicleNameAndType() async {
  try {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('VehicleNameAndType').get();

    return querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return NameAndTypeModel(
        vehicleName: data['vehicleName'],
        type: data['type'],
      );
    }).toList();
  } catch (e) {
    // Handle any errors here
    print('Error fetching data: $e');
    print('');
    return [];
  }
}

}