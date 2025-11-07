// models/fish.dart
import 'pet.dart';

class Fish extends Pet {
  // Default Constructor
  Fish(
      String name, {
        int age = 0,
        String color = 'Orange',
        double weight = 0.0,
        String favoriteFood = 'Fish Food',
        String? vetAppointment,
      }) : super(
    name,
    'Fish',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Fish.withDefaults() : super.withDefaults() {
    species = 'Fish';
    color = 'Orange';
    favoriteFood = 'Fish Food';
  }

  @override
  String getInfo() {
    return 'Fish: $name';
  }

  @override
  String makeSound() {
    return 'Blub Blub!';
  }

  @override
  String getIcon() {
    return '🐠';
  }
}