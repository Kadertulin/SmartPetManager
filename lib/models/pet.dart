// models/pet.dart
import '../interfaces/friendly.dart';

abstract class Pet implements Friendly {
  String name;
  String species;
  int age;
  String color;
  double weight;
  String favoriteFood;
  String? vetAppointment;
  static int totalPets = 0;

  // Default Constructor
  Pet(
      this.name,
      this.species, {
        this.age = 0,
        this.color = 'Unknown',
        this.weight = 0.0,
        this.favoriteFood = 'Unknown',
        this.vetAppointment,
      }) {
    totalPets++;
  }

  // Named Constructor
  Pet.withDefaults()
      : name = 'Unknown',
        species = 'Unknown',
        age = 0,
        color = 'Unknown',
        weight = 0.0,
        favoriteFood = 'Unknown',
        vetAppointment = null {
    totalPets++;
  }

  // Abstract methods
  String getInfo();

  @override
  String makeSound();

  String getIcon();
}