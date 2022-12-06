import 'package:flutter/material.dart';

blockpage( String maintext, String subtext) {
  return Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
       Text(
        maintext,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      Text(
        subtext,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    ],
  );
}
