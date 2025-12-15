abstract class person{
  void displayinfo();
}

class boy extends person{
  void displayinfo(){
    print("My name is ashok");
  }
}

class girl extends person{
  void displayinfo(){
    print("My name is garima");
  }
}

void main(){
  boy b=new boy();
  girl g=new girl();
  b.displayinfo();
  g.displayinfo();
}