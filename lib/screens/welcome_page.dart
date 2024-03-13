import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/widgets/button.dart';
import 'package:travel_app/widgets/large_text.dart';
import 'package:travel_app/widgets/text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    'images/welcome1.jpg',
    'images/welcome2.jpg',
    'images/welcome3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApplargeText(text: "Travel"),
                  // SizedBox(height: 0),
                  AppText(
                    text: "Mountains",
                    size: 30,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 250,
                    child: AppText(
                      text:
                          "My name is Muhammad Ammar Ilyas. I want to add text in this app but I can't because I am dumb.",
                      color: Colors.black38,
                      size: 16,
                    ),
                  ),
                  // Spacer(), // Pushes the content above towards the top
                  SizedBox(height: 20),
                  CustomButton(
                    buttonText: 'Get Started',
                    onPressed: () {},
                  ),
                  SizedBox(height: 20), // Add spacing below the button
                  // Add spacing below the button
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
