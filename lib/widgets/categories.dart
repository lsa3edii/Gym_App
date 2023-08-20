import 'package:flutter/material.dart';
import 'package:gym_app/constants.dart';

class Category extends StatelessWidget {
  final String buttonName;
  final String image;
  final VoidCallback onPressed;

  const Category(
      {super.key,
      required this.buttonName,
      required this.image,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: onPressed,
              child: Image.asset(image, height: 60),
            ),
            // const SizedBox(width: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                minimumSize: const Size(250, 50),
              ),
              onPressed: onPressed,
              child: Text(
                buttonName,
                style: const TextStyle(fontSize: 25, fontFamily: 'Pacifico'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
