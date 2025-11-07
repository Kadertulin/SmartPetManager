// models/dog.dart
import 'pet.dart';

class Dog extends Pet {
  // Default Constructor
  Dog(
      String name, {
        int age = 0,
        String color = 'Brown',
        double weight = 0.0,
        String favoriteFood = 'Bones',
        String? vetAppointment,
      }) : super(
    name,
    'Dog',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Dog.withDefaults() : super.withDefaults() {
    species = 'Dog';
    color = 'Brown';
    favoriteFood = 'Bones';
  }

  @override
  String getInfo() {
    return 'Dog: $name';
  }

  @override
  String makeSound() {
    return 'Woof! Woof!';
  }

  @override
  String getIcon() {
    return '🐕';
  }
}