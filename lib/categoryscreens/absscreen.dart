// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:wallpaperapp/sorce.dart';

class Abstarctpage extends StatefulWidget {
  const Abstarctpage({Key? key}) : super(key: key);

  @override
  State<Abstarctpage> createState() => _AbstarctpageState();
}

class _AbstarctpageState extends State<Abstarctpage> {
  Key? selectedButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Abstract",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "The abstract wallpaper is the most \ntrending in wallpaper and best the vague and cool \nphone like beautiful screen.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(children: [
                  InkWell(
                    key: Key('All'),
                    onTap: () {
                      setState(() {
                        selectedButton = Key('All');
                      });
                    },
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: selectedButton == Key('All')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  InkWell(
                      key: Key('Mobile'),
                      onTap: () {
                        setState(() {
                          selectedButton = Key('Mobile');
                        });
                      },
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: selectedButton == Key('Mobile')
                              ? Colors.black
                              : Colors.grey,
                        ),
                      )),
                  SizedBox(
                    width: 25.0,
                  ),
                  InkWell(
                    key: Key('Desktop'),
                    onTap: () {
                      setState(() {
                        selectedButton = Key('Desktop');
                      });
                    },
                    child: Text(
                      'Desktop',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: selectedButton == Key('Desktop')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              sizewallpaper()
            ],
          ),
        ));
  }
}
