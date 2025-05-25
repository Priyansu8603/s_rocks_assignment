import 'package:flutter/material.dart';

import '../../../Utils/AppColors.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
          '🎬 No projects \n in the studio—hit “New” and \n start producing!!',
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
