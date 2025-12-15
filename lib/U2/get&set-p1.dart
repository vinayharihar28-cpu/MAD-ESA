class student{
  String _name;
  int _age;

  student(this._name,this._age);// this is a constructor

  String get name=>_name;//using getter for name

  set name(String name){//using setter for name
    if(name.isEmpty){
      _name=name;
    }else{
      print('Name cannot be empty');
    }
  }

  int get age=>_age;//using getter for age

  set age(int age){//using setter for age
    if(age>0){
      _age=age;
    }else{
      print('Age must be positive');
    }
  }
}


void main(){
  student std=student('vinay',19);

  //using getters
  print('Name: ${std.name}');
  print('Age: ${std.age}');


  //using setters
  std.name='vinayaka';
  std.age=20;

  print('Updated Name: ${std.name}');
  print('Updated Age: ${std.age}');
}