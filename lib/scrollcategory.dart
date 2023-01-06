import 'package:flutter/material.dart';

Widget scrollcard(
    {required String title,
    required String subtitle,
    required String link,
    void Function()? ontap}) {
  return InkWell(
    onTap: ontap,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 80,
            width: 100,
            child: Image(
              image: NetworkImage(link),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
