// Subclassing

/* Here is the explanation for the code above:
1. The Vehicle class is a base class that has a field named wheelCount. The
class also defines a constructor that initializes the wheelCount field with the
value passed to the constructor.
2. The Vehicle class overrides the toString() method and returns a string that
includes the runtimeType and the value of the wheelCount field.
3. The Car class is a sub-class of Vehicle that extends the Vehicle class. The
class doesn’t define any fields or methods. The constructor calls the super
constructor, passing the value 4 as the argument.
4. The Bicycle class is a sub-class of Vehicle that extends the Vehicle class. The
class doesn’t define any fields or methods. The constructor calls the super
constructor, passing the value 2 as the argument.
5. The main() function creates an instance of the Vehicle class and prints it.
6. The main() function creates an instance of the Car class and prints it.
7. The main() function creates an instance of the Bicycle class and prints it. */

void main(List<String> args) {
  final v = Vehicle(4);
  // before implementing toString() method in Vehicle class
  print(v); // Instance of 'Vehicle'

  // after implementing toString() method in Vehicle class
  print(v); // Vehicle with 4 wheels

  print('------------------');
  print(Car()); // Car with 4 wheels
  print(Bicycle()); // Bicycle with 2 wheels
}

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() => "$runtimeType with $wheelCount wheels";
  // {
  // if (runtimeType == Vehicle) {
  //   return 'Vehicle with $wheelCount wheels';
  // } else {
  //   return super.toString();
  // }
  // }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
