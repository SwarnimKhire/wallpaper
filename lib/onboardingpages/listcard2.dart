import 'package:flutter/material.dart';

listcard2() {
  // String ltitle;

  List name = [
    'Nature',
    'Animations',
    'Amoled',
    'Illustartions',
    'Vintage',
    'Art',
    'Abstract',
    'Minimalist'

  ];

  

  return Wrap(
    spacing: 10.0,
    runSpacing: 10.0,
    children: [
      // Column(
      //   children: [
         
      for (var i = 0; i < name.length; i++)
      

      
        Container(
          height: 60.0,
          width: 150.0,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            // ignore: prefer_const_constructors
            borderRadius: BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          child: Center(
            child: Text(name[i],
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0)),
          ),
        ),
      //   ],
      // ),
    ],
  );
}
