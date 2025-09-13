import 'package:flutter/material.dart';

class storyCreator extends StatelessWidget {
  String imagePath;
  String iconPath;
  storyCreator({super.key, required this.imagePath, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: Stack(
        children: [
          Image.asset(imagePath, height: 160, width: 110, fit: BoxFit.cover),
          Positioned(
            top: 6,
            left: 6,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(40),
              child: Image.asset(iconPath, height: 40, width: 40),
            ),
          ),
        ],
      ),
    );
  }
}
