import 'package:flutter/material.dart';

import '../../../Utils/AppColors.dart';

class Trackbox extends StatefulWidget {
  const Trackbox({super.key});

  @override
  State<Trackbox> createState() => _TrackboxState();
}

class _TrackboxState extends State<Trackbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.maroon, AppColors.maroondark],
        ),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          '🎧 No loops, no hooks… \n let’s create your next banger!!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 45,
            fontFamily: 'Lobster',
          ),
        ),
      ),
    );
  }
}
