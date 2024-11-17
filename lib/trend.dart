import 'package:flutter/material.dart';
import 'dart:io';

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

class TrendMake extends StatelessWidget {
  final String bg;
  final String button = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/button.png';

  const TrendMake({required this.bg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.file(
              File(bg), 
              fit: BoxFit.cover,
              ),
          ),
          const ClearButton(),

          Positioned(
          top: 175, // Adjust the top value as needed to place the text where you want
          left: 50,
          right: 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Make', // Replace with your custom text
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 105, 105, 105),
                // Shadow removed here
              ),
            ),
          ),
        ),

          Positioned(
            top: 225, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendModel(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Corolla',
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
            top: 325, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendModel(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Camry',
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
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendModel(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'RAV4',
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
            top: 525, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendModel(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Grand\nHighlander',
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
            top: 625, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendModel(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Sienna',
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
            top: 725, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendModel(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'Sequoia',
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

class TrendModel extends StatelessWidget {
  final String bg;
  final String button = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/button.png';

  const TrendModel({required this.bg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.file(
              File(bg), 
              fit: BoxFit.cover,
              ),
          ),
          const ClearButton(),

          Positioned(
          top: 175, // Adjust the top value as needed to place the text where you want
          left: 50,
          right: 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Model', // Replace with your custom text
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 105, 105, 105),
                // Shadow removed here
              ),
            ),
          ),
        ),

          Positioned(
            top: 225, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendYear(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'LE',
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
            top: 325, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendYear(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'LE Hybrid',
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
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendYear(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'SE',
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
            top: 525, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendYear(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'SE Hybrid',
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
            top: 625, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendYear(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'SE Nightshade',
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
            top: 725, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendYear(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            'SE Hybrid\nNightshade',
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

class TrendYear extends StatelessWidget {
  final String bg;
  final String button = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/button.png';

  const TrendYear({required this.bg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.file(
              File(bg), 
              fit: BoxFit.cover,
              ),
          ),
          const ClearButton(),

          Positioned(
          top: 175, // Adjust the top value as needed to place the text where you want
          left: 50,
          right: 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Year', // Replace with your custom text
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 105, 105, 105),
                // Shadow removed here
              ),
            ),
          ),
        ),

          Positioned(
            top: 225, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendFinal(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            '2021',
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
            top: 325, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendFinal(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            '2022',
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
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendFinal(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            '2023',
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
            top: 525, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendFinal(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            '2024',
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
            top: 625, // Adjust this value to move the button higher or lower
            left: 0,   // Center align the button horizontally
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 350, // Set the width of the button
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: FileImage(File(button)),
                    fit: BoxFit.fill,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TrendFinal(bg: bg)),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 20, right: 10),
                          child: const Text(
                            '2025',
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

class TrendFinal extends StatelessWidget {
  final String bg;  // The background image file path
  final String trendanalysis = '/Users/vaishalisathiya/Documents/vs code/toyota_fuel_view/toyota_fuel_view/lib/pictures/trend.png';

  TrendFinal({required this.bg});  // Constructor to pass the background path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-Screen Image
          Positioned.fill(
            child: Image.file(
              File(trendanalysis), // Update this path to your image
              fit: BoxFit.cover,
            ),
          ),

          // Clear Button in the Top Left Corner
          const ClearButton(),
        ],
      ),
    );
  }
}