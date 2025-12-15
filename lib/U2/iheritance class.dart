class person{
  String? name;
  int? age;

  void display(){
    print("Name: $name");
    print("Age: $age");
  }
}

class student extends person{
  String? schoolName;
  String? schoolAddress;

  void displaySchool(){
    print("School name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

void main(){
  var s1=student();
  s1.name="Vinay";
  s1.age=19;
  s1.schoolName="PES";
  s1.schoolAddress="BSK III Stage";
  s1.display();
  s1.displaySchool();
}