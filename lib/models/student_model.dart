class StudentModel{
  late int id;
  late String name;

  StudentModel({
    required this.id,
    required this.name
  });

  Map<String, dynamic> toMap(){
    var map=<String, dynamic>{
      'id':id,
      'name':name
    };
    return map;
  }

  StudentModel.fromJson(Map<String, dynamic> map){
    id=map['id'];
    name=map['name'];
  }
}