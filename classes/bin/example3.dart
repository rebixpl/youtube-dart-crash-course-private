// Subclassing

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
