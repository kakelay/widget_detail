 

import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
            Positioned(
              bottom: -50,
              child: Container(
                width: 140,
                height: 150,
                color: Colors.pink,
              ),
            ),
            const Positioned(
              right: -40,
              bottom: -20,
              child: Text(
                'Hello Seeting Icon',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
