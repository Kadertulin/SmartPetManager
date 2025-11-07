// main.dart
import 'package:flutter/material.dart';
import 'screens/pet_manager_home.dart';

void main() {
  runApp(const SmartPetManagerApp());
}

class SmartPetManagerApp extends StatelessWidget {
  const SmartPetManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Pet Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const PetManagerHome(),
    );
  }
}