// models/rabbit.dart
import 'pet.dart';

class Rabbit extends Pet {
  // Default Constructor
  Rabbit(
      String name, {
        int age = 0,
        String color = 'White',
        double weight = 0.0,
        String favoriteFood = 'Carrots',
        String? vetAppointment,
      }) : super(
    name,
    'Rabbit',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Rabbit.withDefaults() : super.withDefaults() {
    species = 'Rabbit';
    color = 'White';
    favoriteFood = 'Carrots';
  }

  @override
  String getInfo() {
    return 'Rabbit: $name';
  }

  @override
  String makeSound() {
    return 'Squeak Squeak!';
  }

  @override
  String getIcon() {
    return '🐰';
  }
}