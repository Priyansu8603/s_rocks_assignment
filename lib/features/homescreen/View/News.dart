import 'package:flutter/material.dart';

import '../../../Utils/AppColors.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.maroon,
            AppColors.maroondark,
          ]
        )
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          '📻 Still tuning... \n No fresh drops to report',
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
