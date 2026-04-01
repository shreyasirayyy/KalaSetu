import 'dart:async';
import 'package:flutter/material.dart';
import 'role_selection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => RoleSelection()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg1.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          Container(color: Colors.black.withOpacity(0.4)),

  Center(
    child: Align(
      alignment: Alignment(0, -0.3), 
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Kalasetu",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Connecting Art & Artists",
            style: TextStyle(
              color: const Color.fromARGB(234, 238, 231, 231),
              fontSize: 18,
              letterSpacing: 1,
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