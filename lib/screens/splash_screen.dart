import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  // declaring logo
    final String logoAsset = 'assets/move_mate_logo.svg';
    
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    

    return const Scaffold(
      body: Column(
        children: [
          // Logo display
          Center(
            child: Container(),
          ),

        ],
      ),
    );
  }
}