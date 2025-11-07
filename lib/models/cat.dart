// models/cat.dart
import 'pet.dart';

class Cat extends Pet {
  // Default Constructor
  Cat(
      String name, {
        int age = 0,
        String color = 'White',
        double weight = 0.0,
        String favoriteFood = 'Fish',
        String? vetAppointment,
      }) : super(
    name,
    'Cat',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Cat.withDefaults() : super.withDefaults() {
    species = 'Cat';
    color = 'White';
    favoriteFood = 'Fish';
  }

  @override
  String getInfo() {
    return 'Cat: $name';
  }

  @override
  String makeSound() {
    return 'Meow!';
  }

  @override
  String getIcon() {
    return '🐈';
  }
}