// Methods

/* Here is the explanation for the code above:
1. The Car class has an instance variable called speed. This represents the current 
speed of the car.
2. The drive() method takes a named parameter called speed. This is the speed to 
which the car is to be accelerated.
3. The stop() method stops the car by setting the speed to 0.
4. When the drive() method is called, it prints the message Accelerating to 
$speed km/h, where $speed is the value of the speed argument.
5. When the stop() method is called, it prints the message Stopping... and then 
Stopped at $speed km/h, where $speed is the value of the speed instance variable.
6. The main() method creates a Car object called car and calls the drive() method 
with a speed value of 20. It then prints the current speed of the car.
7. The main() method calls the drive() method again with a speed value of 40.
8. Finally, the main() method calls the stop() method to stop the car. */

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
