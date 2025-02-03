import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(120, 47, 71, 62),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.white.withOpacity(0.7),
              width: 0.3,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}