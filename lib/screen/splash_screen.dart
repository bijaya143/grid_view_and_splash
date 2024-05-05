import 'dart:async';

import 'package:class_test_one/model/person_model.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Person person = Person();

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/grid');
    });
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Welcome Bijaya', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.amber
          ),),
        ),
      ),
    );
  }
}
