import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  // Question 1
  String firstName = "Ding Jiu";
  String lastName = "Wong";
  int num1 = 10;
  double num2 = 5.5;
  var add1 = num1 + num2;
  bool nameState = true;
  String? middleName;

  // Question 2
  print("Hello, my name is $firstName $lastName");

  // Question 3a
  print("Sum of both integers: ${sum(num1, num2.round())}");
  //Question 3b
  print("Sum of default value and user-input value: ${add(a: 5)}");

  // Question 4
  Car myCar = Car("Honda", "Civic", "Blue");
  print(myCar.registrationInfo("JXX888", "U123"));

  // Question 5a
  printName(firstName, lastName, middleName);
  // Question 5b
  printNameWithLoop(firstName, lastName); // without middle name
}

// Question 3a
int sum(int a, int b) {
  return a + b;
}

// Question 3b
int add({required int a, int b = 10}) {
  return a + b;
}

// Question 4
class Car {
  String carName;
  String carModel;
  String carColour;

  Car(this.carName, this.carModel, this.carColour);

  String registrationInfo(String numberPlate, String userID) {
    return "Car: $carName, Model: $carModel, Colour: $carColour, Plate: $numberPlate, UserID: $userID";
  }
}

// Question 5a
void printName(String firstName, String lastName, [String? middleName]) {
  if (middleName != null) {
    print("$firstName $middleName $lastName");
  } else {
    print("$firstName $lastName");
  }
}

// Question 5b
void printNameWithLoop(
  String firstName,
  String lastName, [
  String? middleName,
]) {
  for (int i = 0; i < (middleName != null ? 5 : 3); i++) {
    printName(firstName, lastName, middleName);
  }
}

// Question 6
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wong DIng Jiu's First App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

//Question 7
// a. Valid

// b. Invalid: `boolean` should be `bool` in Dart

// c. Valid

// d. Invalid: Default value for non-nullable `String` cannot be null

// Question 8
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Wong Ding Jiu's First App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Image.network(
          'https://static.wikia.nocookie.net/reddwarf/images/6/69/Ainsley_Harriott.jpg/revision/latest/scale-to-width-down/1000?cb=20180223100130',
        ),
      ),
    );
  }
}
