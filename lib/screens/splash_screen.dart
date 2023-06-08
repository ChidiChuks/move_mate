import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  // declaring logo
    // final String logoAsset = 'assets/move_mate_logo.svg';
    
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white70,],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("assets/move_logo.png", width: 250,),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom:8.0, top: 2.0, right: 16.0, left: 16.0),
              child: Text('Parcel tracker from another angle', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom:8.0, top: 2.0, right: 16.0, left: 16.0),
              child: Text('Developed by: Chidiebere Chukwuma', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12), ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom:8.0, top: 2.0, right: 16.0, left: 16.0),
              child: Text('Moniepoint\'s Assessment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Colors.blue), ),
            ),
          ],
        ),
      ),
    );
  }
}