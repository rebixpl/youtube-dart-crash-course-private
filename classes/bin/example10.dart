// Abstract Classes

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
