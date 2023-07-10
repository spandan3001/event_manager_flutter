import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../theme/colors.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add any initialization tasks here
    // Example: Fetch data, check user authentication, etc.
    // After that, navigate to the next screen
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    NavigatorState state = Navigator.of(context);
    await Future.delayed(
        const Duration(seconds: 3)); // Add a delay for demonstration purposes
    state.pushReplacement(
      MaterialPageRoute(
          builder: (context) =>
              const HomeScreen()), // Replace HomeScreen with your desired screen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blue,
        child: Center(
          child: Lottie.asset(
            'assets/splash_animation.json', // Replace with your animation file path
            width: 200,
            height: 200,
            fit: BoxFit.contain,
            repeat: true,
          ),
        ),
      ),
    );
  }
}
