// models/hamster.dart
import 'pet.dart';

class Hamster extends Pet {
  // Default Constructor
  Hamster(
      String name, {
        int age = 0,
        String color = 'Brown',
        double weight = 0.0,
        String favoriteFood = 'Sunflower Seeds',
        String? vetAppointment,
      }) : super(
    name,
    'Hamster',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Hamster.withDefaults() : super.withDefaults() {
    species = 'Hamster';
    color = 'Brown';
    favoriteFood = 'Sunflower Seeds';
  }

  @override
  String getInfo() {
    return 'Hamster: $name';
  }

  @override
  String makeSound() {
    return 'Squeak!';
  }

  @override
  String getIcon() {
    return '🐹';
  }
}