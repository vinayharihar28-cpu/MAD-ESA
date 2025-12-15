void main(){
  student std=new student();//default constructor
  student1 std1=new student1("Vinay",19);//parametrized constructor
  student3 std3=new student3();
  student3 std4=new student3.namedConst("Computer Science");
}

//default constructor or no-arg constructor
class student{
  student(){
    print("Example of default constructor");
  }
}

//paramaterized constructor
class student1{
  student1(String str, int age){
    print('The name is: ${str}');
    print('The age is: ${age}');
  }
}

//named parameter
class student3{
  student3(){
    print('The example for named parameter\n');
  }

  student3.namedConst(String branch){
    print("The branch is: ${branch}");
  }
}