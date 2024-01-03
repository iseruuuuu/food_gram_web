import 'package:flutter/material.dart';

class AppContents extends StatelessWidget {
  const AppContents({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final IconData icon;
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Image.asset(
          image,
          width: 200,
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
