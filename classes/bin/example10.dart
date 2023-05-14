// Abstract Classes

/* Here is the explanation for the code above:
1. The Vehicle class is an abstract class. It can’t be instantiated. It has two
methods: accelerate() and decelerate(). Both methods have a default
implementation.
2. The Car class extends the Vehicle class. It overrides the accelerate()
and decelerate() methods.
3. The Motorcycle class implements the Vehicle interface. It only
overrides the accelerate() and decelerate() methods.
4. The VehicleKind is an enum that represents the different kinds of
vehicles.
5. The main() function creates an instance of the Car and Motorcycle
classes. It calls the accelerate() and decelerate() methods on these
instances. */

void main(List<String> args) {
  const car = Car();
  print(car); // Instance of 'Car'
  car.accelerate(); // VehicleKind.car is accelerating
  car.decelerate(); // VehicleKind.car is decelerating

  print('------------------');
  const motorcycle = Motorcycle();
  print(motorcycle); // Instance of 'Motorcycle'
  motorcycle.accelerate(); // Motorcycle is accelerating
  motorcycle.decelerate(); // Motorcycle is decelerating
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();

  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
  bicycle,
}
