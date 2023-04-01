// Methods

void main(List<String> args) {
  // final myCar = Car();
  // myCar.speed = 20;
  // myCar.speed = 30;

  final car = Car();

  car.drive(speed: 20);
  print('Current speed: ${car.speed} km/h');
  car.drive(speed: 40);
  car.stop();

// Accelerating to 20 km/h
// Current speed: 20 km/h
// Accelerating to 40 km/h
// Stopping...
// Stopped at 0 km/h
}

class Car {
  int speed = 0;

  // Methods
  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
    print('Stopped at $speed km/h');
  }
}
