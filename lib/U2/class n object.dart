class Animal{
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display(){
    print("Animal name: $name");
    print("Number of legs: $numberOfLegs");
    print("Life Span: $lifeSpan\n");
  }
}



class book{
  String? name;
  String? author;
  int? price;

  void display(){
    print("Book Name: $name");
    print("Author Name: $author");
    print("Book Price: $price\n");
  }
}

void main(){
  Animal dog=Animal();
  dog.name="chibo";
  dog.numberOfLegs=4;
  dog.lifeSpan=12;
  dog.display();


  book b1=book();
  b1.name="Rich dad poor dad";
  b1.author="mathew";
  b1.price=150;
  b1.display();
}