import 'dart:convert';
class User {
  final String name;
  final int age;
  User({required this.name, required this.age});
  factory User.fromJson(Map<String, dynamic> json) => User(name: json['name'], age:
  json['age'], );
  Map<String, dynamic> toJson() => {'name': name, 'age': age};
}

void main() {
  String jsonString = '{"name": "Atharv", "age": 20}';
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  User user = User.fromJson(userMap);
  print("Name : ${user.name}");
  print("Age : ${user.age}");
}