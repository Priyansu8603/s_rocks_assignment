import 'package:flutter/material.dart';

class Trackbox extends StatefulWidget {
  const Trackbox({super.key});

  @override
  State<Trackbox> createState() => _TrackboxState();
}

class _TrackboxState extends State<Trackbox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'TrackBox',
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 45,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
