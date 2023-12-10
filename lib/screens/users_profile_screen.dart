import 'package:flutter/material.dart';
import 'package:inventory_system/controller/form_controller.dart';
import 'package:inventory_system/screens/manage_users_screen.dart';
import 'package:inventory_system/widget/form_container.dart';
import 'package:provider/provider.dart';

import '../widget/btn_widget.dart';

class UsersProfileScreen extends StatefulWidget {
  const UsersProfileScreen({Key? key}) : super(key: key);

  @override
  State<UsersProfileScreen> createState() => _UsersProfileScreenState();
}

class _UsersProfileScreenState extends State<UsersProfileScreen> {
  final FormController formController = FormController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FormController formController = Provider.of<FormController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('UsersProfileScreen'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20,),
            Text('First Name'),
            SizedBox(height: 10,),
            FormContainerWidget(
              controller: firstNameController,
                hintText: 'First Name'),
            SizedBox(height: 20,),
              Text('Last Name'),
              SizedBox(height: 10,),
            FormContainerWidget(
              controller: lastNameController,
                hintText: 'Last Name'),
              SizedBox(height: 10,),
            Text('Email'),
              SizedBox(height: 10,),
            FormContainerWidget(
                controller: emailController,
                hintText: 'Email'),
              SizedBox(height: 10,),
            Text('Phone'),
              SizedBox(height: 10,),
            FormContainerWidget(
                controller: phoneController,
                hintText: 'Phone'),
              SizedBox(height: 10,),
              Text('Password'),
              SizedBox(height: 10,),
              FormContainerWidget(
                  controller: passwordController,
                  hintText: 'Password'),
              SizedBox(height: 10,),
              Text('Confirmedpassword'),
              SizedBox(height: 10,),
              FormContainerWidget(
                  controller: confirmpasswordController,
                  hintText: 'Password'),

            SizedBox(height: 20,),
            BtnWidget(
                onPressed: () async{
                  formController.addUserData(context,
                       firstNameController.text.trim(),
                       lastNameController.text.trim(),
                       emailController.text.trim(),
                       phoneController.text.trim(),
                       passwordController.text.trim(),
                       confirmpasswordController.text.trim(),
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageUsers()));
                  },
              text: 'Add User',
            )
            ],
          ),
        ),
      ),
    );
  }
}
