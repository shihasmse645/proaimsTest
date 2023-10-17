import 'package:flutter/material.dart';
import 'package:proaimstest/screens/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>  Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 16, 4),
    
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Images/logo-512.png'),
                fit: BoxFit.cover,
              ),
            ),
            // You can add other widgets on top of the background image if needed.
                ),
          ),
        ),
      
    );
  }
}
