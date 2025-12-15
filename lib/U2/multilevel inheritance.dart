class person{
  String? name;
  int? age;

  void display(){
    print("Name: $name");
    print("Age: $age");
  }
}

class doctor extends person{
  String? listOfDegrees;
  String? hospitalName;

  void displayDoctor(){
    print("List of Degrees: $listOfDegrees");
    print("Hospital Name: $hospitalName");
  }
}

class specialist extends doctor{
  String? specialization;

  void displaySpecialization(){
    print("Specialization: $specialization");
  }
}


void main(){
  specialist p=new specialist();
  p.name="vinay";
  p.age=19;
  p.listOfDegrees="BCA";
  p.hospitalName="PES";
  p.specialization="AI/ML";
  p.display();
  p.displayDoctor();
  p.displaySpecialization();
}