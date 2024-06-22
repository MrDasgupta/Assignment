//Creating a Class 'Car' with required properties
class Car {
  String brand;
  String model;
  int year;
  double milesDriven;


  // Method to add miles driven
  drive(double miles) {
    milesDriven += miles;
  }

  // Method to get miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get the brand
  String getBrand() {
    return brand;
  }

  // Method to get the model
  String getModel() {
    return model;
  }

  // Method to get the year
  int getYear() {
    return year;
  }

  // Method to get the age of the car
  int getAge() {
    int currentYear = 2024;
    return currentYear - year;
  }

  // Static property to keep track of the number of Car objects
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }
}

void main() {
  // Creating three Car objects
  Car car1 = Car("Chevrolet", "Camaro", 2020, 0.0);
  Car car2 = Car("Ford", "Mustang", 2018, 0.0);
  Car car3 = Car("Toyota", "Supra", 1978, 0.0);

  // Driving each car a different number of miles
  car1.drive(15000.794);
  car2.drive(6500.866);
  car3.drive(56000.786);

  // Printing out the brand, model, year, miles driven, and age for each car
  print("Car 1: ${car1.getBrand()} ${car1.getModel()}, ${car1.getYear()}, ${car1.getMilesDriven()} miles, Age: ${car1.getAge()} years");
  print("Car 2: ${car2.getBrand()} ${car2.getModel()}, ${car2.getYear()}, ${car2.getMilesDriven()} miles, Age: ${car2.getAge()} years");
  print("Car 3: ${car3.getBrand()} ${car3.getModel()}, ${car3.getYear()}, ${car3.getMilesDriven()} miles, Age: ${car3.getAge()} years");

  // Printing out the total number of Car objects created
  print("Total number of cars created: ${Car.numberOfCars}");
}
