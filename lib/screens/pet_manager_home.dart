// screens/pet_manager_home.dart
import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../models/dog.dart';
import '../models/cat.dart';
import '../models/bird.dart';
import '../models/fish.dart';
import '../models/rabbit.dart';
import '../models/hamster.dart';
import '../models/snake.dart';
import 'pet_detail_screen.dart';

class PetManagerHome extends StatefulWidget {
  const PetManagerHome({Key? key}) : super(key: key);

  @override
  State<PetManagerHome> createState() => _PetManagerHomeState();
}

class _PetManagerHomeState extends State<PetManagerHome> {
  final List<Pet> pets = [];

  @override
  void initState() {
    super.initState();
    // Create sample pets with details
    pets.add(Dog(
      'Buddy',
      age: 3,
      color: 'Golden',
      weight: 25.5,
      favoriteFood: 'Meat & Bones',
      vetAppointment: '15 Nov 2025',
    ));

    pets.add(Cat(
      'Mia',
      age: 2,
      color: 'White & Black',
      weight: 4.2,
      favoriteFood: 'Tuna Fish',
      vetAppointment: '20 Nov 2025',
    ));

    pets.add(Bird(
      'Tweety',
      age: 1,
      color: 'Yellow',
      weight: 0.5,
      favoriteFood: 'Millet Seeds',
    ));

    pets.add(Fish(
      'Nemo',
      age: 1,
      color: 'Orange & White',
      weight: 0.1,
      favoriteFood: 'Fish Flakes',
    ));

    pets.add(Rabbit(
      'Fluffy',
      age: 2,
      color: 'White',
      weight: 3.5,
      favoriteFood: 'Carrots & Lettuce',
      vetAppointment: '25 Nov 2025',
    ));

    pets.add(Hamster(
      'Hammy',
      age: 1,
      color: 'Brown',
      weight: 0.2,
      favoriteFood: 'Sunflower Seeds',
    ));

    pets.add(Snake(
      'Slinky',
      age: 4,
      color: 'Green & Yellow',
      weight: 2.0,
      favoriteFood: 'Frozen Mice',
      vetAppointment: '30 Nov 2025',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Smart Pet Manager',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: pets.length,
              itemBuilder: (context, index) {
                final pet = pets[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PetDetailScreen(pet: pet),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue[50],
                            child: Text(
                              pet.getIcon(),
                              style: const TextStyle(fontSize: 32),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pet.getInfo(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  pet.makeSound(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.cake,
                                      size: 14,
                                      color: Colors.grey[600],
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${pet.age} years',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Icon(
                                      Icons.palette,
                                      size: 14,
                                      color: Colors.grey[600],
                                    ),
                                    const SizedBox(width: 4),
                                    Expanded(
                                      child: Text(
                                        pet.color,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: Text(
              'Total Pets: ${Pet.totalPets}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}