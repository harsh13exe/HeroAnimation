import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({
    super.key,
    this.onTap,
    required this.width,
  });

  final VoidCallback? onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: 'assets/login_logo.png',
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              'assets/login_logo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
