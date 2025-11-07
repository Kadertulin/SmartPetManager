# 🐾 Smart Pet Manager

Modern ve kullanıcı dostu bir Flutter uygulaması ile evcil hayvanlarınızı yönetin!

## 📝 Proje Hakkında

Smart Pet Manager, BIM493 Mobile Programming I dersi için geliştirilmiş, OOP (Object-Oriented Programming) prensiplerine tam uyumlu bir Flutter uygulamasıdır. Kullanıcıların farklı türdeki evcil hayvanlarını ekleyip, bilgilerini görüntüleyebilecekleri modern bir arayüz sunar.

## ✨ Özellikler

### 🐕 Desteklenen Evcil Hayvan Türleri
- **Köpek (Dog)** 🐕
- **Kedi (Cat)** 🐈
- **Kuş (Bird)** 🦜
- **Balık (Fish)** 🐠
- **Tavşan (Rabbit)** 🐰
- **Hamster** 🐹
- **Yılan (Snake)** 🐍

### 📋 Pet Özellikleri
- İsim
- Tür
- Yaş
- Renk
- Kilo
- Favori Yemek
- Veteriner Randevu Tarihi
- Karakteristik Ses

### 🎨 UI/UX Özellikleri
- Modern ve temiz arayüz
- Renkli ve gradient tasarım
- Detaylı pet bilgi kartları
- Tıklanabilir pet listesi
- Icon tabanlı bilgi gösterimi

## 🏗️ OOP Prensipleri

Bu proje tüm temel OOP prensiplerine uygun olarak geliştirilmiştir:

### 1. **Class (Sınıflar)**
- `Pet` (Abstract Base Class)
- `Dog`, `Cat`, `Bird`, `Fish`, `Rabbit`, `Hamster`, `Snake` (Concrete Classes)

### 2. **Inheritance (Kalıtım)**
Tüm pet sınıfları `Pet` abstract sınıfından türetilmiştir:
```dart
class Dog extends Pet { ... }
class Cat extends Pet { ... }
```

### 3. **Abstraction (Soyutlama)**
`Pet` sınıfı abstract metodlar içerir:
```dart
abstract class Pet {
  String getInfo();
  String makeSound();
  String getIcon();
}
```

### 4. **Interface (Arayüz)**
`Friendly` interface'i implement edilmiştir:
```dart
abstract class Friendly {
  String makeSound();
}
```

### 5. **Mixin**
`Bird` sınıfı `Flyable` mixin'ini kullanır:
```dart
mixin Flyable {
  String fly() => 'Flying high!';
}
```

### 6. **Constructor**
Her sınıf hem default hem de named constructor içerir:
```dart
// Default Constructor
Dog(String name, {...});

// Named Constructor
Dog.withDefaults() : super.withDefaults();
```

### 7. **Keywords**
- `static` - totalPets sayacı
- `super` - Parent class constructor çağrıları
- `this` - Nesne referansı

## 📁 Proje Yapısı

```
lib/
├── main.dart                          
├── interfaces/
│   └── friendly.dart                  
├── mixins/
│   └── flyable.dart                   
├── models/
│   ├── pet.dart                       
│   ├── dog.dart                       
│   ├── cat.dart                       
│   ├── bird.dart                      
│   ├── fish.dart                      
│   ├── rabbit.dart                    
│   ├── hamster.dart                  
│   └── snake.dart                     
└── screens/
    ├── pet_manager_home.dart         
    └── pet_detail_screen.dart         
```

## 🚀 Kurulum

### Gereksinimler
- Flutter SDK (3.0 veya üzeri)
- Dart SDK (3.0 veya üzeri)
- Android Studio / VS Code
- Android Emulator veya iOS Simulator

## 📱 Kullanım

1. Uygulama açıldığında 7 örnek pet göreceksiniz
2. Herhangi bir pet kartına tıklayarak detaylı bilgileri görüntüleyin
3. Pet detay sayfasında:
    - Pet'in yaşını, rengini, kilosunu görün
    - Favori yemeğini öğrenin
    - Veteriner randevu tarihini kontrol edin
    - Karakteristik sesini görün

## 🛠️ Teknolojiler

- **Flutter** - UI Framework
- **Dart** - Programming Language
- **Material Design** - Design System

## 👨‍💻 Geliştiriciler
Kader Tülin Süre 10148830858

