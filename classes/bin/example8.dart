// Factory Constructors

void main(List<String> args) {
  print(Vehicle.car()); // Instance of 'Car'
  print(Vehicle.truck()); // Instance of 'Truck'
}

class Vehicle {
  const Vehicle();

  // factory constructors can only return an instance of the class that is a
  // subclass of the class that declares the factory constructor.
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
