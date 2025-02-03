import 'dart:ui';
import 'package:flutter/material.dart';

class BuildCategoryButton extends StatelessWidget {
  const BuildCategoryButton({super.key, required this.child, this.width = 200});
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 37,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: 0.4,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(EdgeInsets.zero),
              shadowColor: WidgetStateProperty.all(Colors.transparent),
              backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(31, 255, 255, 255),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class BuildCategoryButtonSelected extends StatelessWidget {
  const BuildCategoryButtonSelected({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 37,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: const WidgetStatePropertyAll(EdgeInsets.zero),
              shadowColor: WidgetStateProperty.all(Colors.transparent),
              backgroundColor: WidgetStateProperty.all(
                const Color.fromARGB(255, 239, 206, 236),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}