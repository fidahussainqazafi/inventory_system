import 'package:flutter/material.dart';

class DropdownController extends ChangeNotifier {

var dropdownItems = ['MP4','MP5'];

var  selectedValue = 'MP4';

 void setValue(value) {

   selectedValue = value;
    notifyListeners();

 }

}