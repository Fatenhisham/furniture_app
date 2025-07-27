import 'package:flutter/material.dart';

class ImageTheme extends StatelessWidget {
  final String imagePath;
  final double size;
 
  const ImageTheme({
    super.key,
    required this.imagePath,
    this.size = 70,
    
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: size,
      height: size,
      
    );
  }
}
