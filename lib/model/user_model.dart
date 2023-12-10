class UserModel {
  final String firstname;
  final String lastname;
  final String email;
  final String phone;
  final String password;
  final String confirmpassword;



  UserModel( {
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.phone,
   required this.password,
   required this.confirmpassword,


  });

  Map<String, dynamic> toMap() {
    return {
      'username': firstname,
      'lastname': lastname,
      'email': email,
      'phone': phone,
      'password': password,
      'confirmpassword': confirmpassword,

    };
  }

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      firstname: json['username'],
      lastname: json['lastname'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      confirmpassword: json['confirmpassword'],


    );
  }
}
