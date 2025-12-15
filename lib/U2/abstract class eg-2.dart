abstract class shape{
  int dim1,dim2;
  //constructor
  shape(this.dim1,this.dim2);

  //abstract method
  void area();
}

class rectangle extends shape{
  //constructor
  rectangle(int dim1,int dim2):super(dim1,dim2);

  //implementation of area()
  @override
  void area(){
    print("The area of rectangle is ${dim1*dim2}");
  }
}

class triangle extends shape{
  //constructor
  triangle(int dim1,int dim2):super(dim1,dim2);

  //implementation of area
  @override
  void area(){
    print("The area of triangle is ${0.5*dim1*dim2}");
  }
}

void main(){
  rectangle rect=rectangle(10,20);
  rect.area();
  triangle tri=triangle(10,20);
  tri.area();
}