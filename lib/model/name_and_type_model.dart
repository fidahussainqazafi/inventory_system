


  class  NameAndTypeModel {

  final vehicleName;
  final type;

  NameAndTypeModel({
   required this.vehicleName,
    required this.type,

  });

  Map<String, dynamic>toMap() {
    return {
      'vehicleName' : vehicleName,
      'type' : type,
    };
  }

  factory NameAndTypeModel.fromMap(Map<String, dynamic> json){

    return NameAndTypeModel(
        vehicleName: json['vehicleName'],
        type: json['type']
    );

  }


  }