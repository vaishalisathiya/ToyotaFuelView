import 'package:flutter/material.dart';
import 'dart:io';
import 'sva.dart';
import 'dva.dart';
import 'trend.dart';

void main() {
  runApp(ToyotaFuelViewApp());
}

class ToyotaFuelViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toyota Fuel View',
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: ColorScheme(
          primary: Colors.red,
          secondary: Colors.black,
          surface: Colors.white,
          background: Colors.white,
          error: Colors.redAccent,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  final String frontPage = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/frontpage.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-Screen Image
          Positioned.fill(
            child: Image.file(
              File(frontPage), // Update this path to your image
              fit: BoxFit.cover,
            ),
          ),
          // Log In Button at the Bottom
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 209, 70, 48),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String loginPage = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/loginpage.png'; // Image path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-Screen Background Image
          Positioned.fill(
            child: Image.file(
              File(loginPage), // Load image from the provided file path
              fit: BoxFit.cover,
            ),
          ),
          // Semi-transparent overlay (optional, for better readability)
          // Login Form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Username Field with adjusted height and width
                  SizedBox(height: 450),
                  Container(
                    width: 300, // Adjust the width of the input field
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Password Field with adjusted height and width
                  Container(
                    width: 300, // Adjust the width of the input field
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Login Button with adjusted padding and updated text
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => GetDataScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50), // Adjust padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                    child: const Text(
                      'Log In', // Button text updated
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClearButton extends StatelessWidget {
  const ClearButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 20,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(color: Colors.transparent, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}

class GetDataScreen extends StatelessWidget {
  final String bg = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/bg.png';
  final String car = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/car.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-Screen Background Image
          Positioned.fill(
            child: Image.file(
              File(bg),
              fit: BoxFit.cover,
            ),
          ),
          // Clear Button in the Top Left Corner
          const ClearButton(),
          // Centered Large Button with Image Background (Moved Up)
          Positioned(
            top: 200, // Adjust this value to move the button higher or lower
            left: 0,  // Remove the previous left calculation
            right: 0, // Add right: 0 to center the button
            child: Align(
              alignment: Alignment.center, // Center the button horizontally
              child: Container(
                width: 350, // Set the width of the button
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(car)),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstSelect(bg: bg)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // White Opaque Layer Over the Button
                      Positioned.fill(
                        child: Container(
                          color: Colors.white.withOpacity(0.6), // Adjust opacity as needed
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Toyota',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FirstSelect extends StatelessWidget {
  final String bg;
  final String car = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/car.jpg';
  final String car2 = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/2car.jpeg';
  final String graph = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/graph.png';

  FirstSelect({required this.bg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-Screen Background Image
          Positioned.fill(
            child: Image.file(
              File(bg),
              fit: BoxFit.cover,
            ),
          ),
          // Clear Button in the Top Left Corner
          const ClearButton(),
          // Centered Large Button with Image Background (Moved Up)
          Positioned(
            top: 200, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(car)),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SVAMake(bg: bg)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // White Opaque Layer Over the Button
                      Positioned.fill(
                        child: Container(
                          color: Colors.white.withOpacity(0.6), // Adjust opacity as needed
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Single\nVehicle\nAnalysis',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 425, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(car2)),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DVAMake1(bg: bg)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // White Opaque Layer Over the Button
                      Positioned.fill(
                        child: Container(
                          color: Colors.white.withOpacity(0.6), // Adjust opacity as needed
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Dual\nVehicle\nAnalysis',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 650, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(graph)),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendMake(bg: bg)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // White Opaque Layer Over the Button
                      Positioned.fill(
                        child: Container(
                          color: Colors.white.withOpacity(0.6), // Adjust opacity as needed
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Trend\nAnalysis',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}