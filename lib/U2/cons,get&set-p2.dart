class Rectangle {
  int _width;
  int _height;

  // Constructor
  Rectangle(this._width, this._height);

  // Getter for width
  int get width => _width;

  // Getter for height
  int get height => _height;

  // Setter for width
  set width(int width) {
    if (width > 0) {
      _width = width;
    } else {
      print("Width should be a positive number");
    }
  }

  // Setter for height
  set height(int height) {
    if (height > 0) {
      _height = height;
    } else {
      print("Height should be a positive number");
    }
  }

  // Method to calculate area
  int areaOfRectangle() {
    return _width * _height;
  }
}

void main() {
  // Creating object using constructor
  Rectangle rect = Rectangle(20, 10);

  // Using getters
  print('Width: ${rect.width}');
  print('Height: ${rect.height}');

  // Calculate area
  print('Area of Rectangle: ${rect.areaOfRectangle()}');
}
