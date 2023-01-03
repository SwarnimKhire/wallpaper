import 'package:flutter/material.dart';

scrollcard(
    {required String title1, required String subtitle, required String link, void Function()? ontap}) {
  return SingleChildScrollView(
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      child: InkWell(
        splashColor: Colors.yellow.withAlpha(35),
        onTap: ontap,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              leading: Image(
                image: NetworkImage(link),
              ),
              title: Text(
                title1,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              subtitle: Text(
                subtitle,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
