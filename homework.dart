//นายนธีพัฒน์ เถื่อนกวา ปสสท3 1147
import 'dart:math';

abstract class  Shape{
  calculateArea();
}
abstract class Drawable {
  draw();
}

class Circle extends Shape implements Drawable {
  int? radius;
  Circle(this.radius);
  @override

   calculateArea() {
    return pi * pow(radius!, 2);
  }
  @override
  draw() {
    print("Drawing Circle with radius:${radius}");
  }
}

class Rectangle extends Shape implements Drawable{
  int? width;
  int? heigth;

  Rectangle(this.heigth,this.width);

  @override
  calculateArea() {
    // TODO: implement calculateArea
    return print('Area of Rectangle: ${width! * heigth!}');
  }
  draw() => print("Drawing Rectangle with width: ${width} and height: ${heigth}");
}
void main(List<String> args) {
  var cir =Circle(5);
  var rec = Rectangle(10, 20);

  cir.draw();
  print('Area of Circle: ${cir.calculateArea().toStringAsFixed(2)}');

  rec.draw();
  rec.calculateArea();

}
