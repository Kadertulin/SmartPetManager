// models/bird.dart
import 'pet.dart';
import '../mixins/flyable.dart';

class Bird extends Pet with Flyable {
  // Default Constructor
  Bird(
      String name, {
        int age = 0,
        String color = 'Yellow',
        double weight = 0.0,
        String favoriteFood = 'Seeds',
        String? vetAppointment,
      }) : super(
    name,
    'Bird',
    age: age,
    color: color,
    weight: weight,
    favoriteFood: favoriteFood,
    vetAppointment: vetAppointment,
  );

  // Named Constructor
  Bird.withDefaults() : super.withDefaults() {
    species = 'Bird';
    color = 'Yellow';
    favoriteFood = 'Seeds';
  }

  @override
  String getInfo() {
    return 'Bird: $name';
  }

  @override
  String makeSound() {
    return 'Chirp Chirp!';
  }

  @override
  String getIcon() {
    return '🦜';
  }
}