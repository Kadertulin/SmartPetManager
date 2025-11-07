// models/snake.dart
import 'pet.dart';

class Snake extends Pet {
  // Default Constructor
  Snake(
      String name, {
        int age = 0,
        String color = 'Green',
        double weight = 0.0,
        String favoriteFood = 'Mice',
        String? vetAppointment,
      }) : super(
    name,
    'Snake',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Snake.withDefaults() : super.withDefaults() {
    species = 'Snake';
    color = 'Green';
    favoriteFood = 'Mice';
  }

  @override
  String getInfo() {
    return 'Snake: $name';
  }

  @override
  String makeSound() {
    return 'Hissss!';
  }

  @override
  String getIcon() {
    return '🐍';
  }
}