import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_screen_app/Buttons/elevated_button.dart';




class ItemCardBig extends StatelessWidget {
  const ItemCardBig({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
            child: Container(
              height: 240,
              width: 360,
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(40),
                // border: Border.all(
                //   color: Colors.white,
                //   width: 0.2,
                // ),
                image: DecorationImage(
                    image: AssetImage("assets/images/details/Top_Card.png"),
                    opacity: 0.1,
                    fit: BoxFit.contain),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 7),
                        const Text("Angi's Yummy Burger",
                            style: TextStyle(
                                height: 0,
                                fontSize: 15,
                                fontFamily: "Inter",
                                color: Colors.white,
                                letterSpacing: -0.4,
                                fontWeight: FontWeight.w800)),
                        Text("Delish vegan burger\nthats tastes like heaven",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Inter",
                                color: Colors.white.withOpacity(0.7),
                                letterSpacing: -0.4,
                                height: 0,
                                fontWeight: FontWeight.w500)),
                        const Text(
                          "₳ 13.99",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Inter",
                              color: Colors.white,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 30),
                        ColoredElevatedButton(
                            height: 38,
                            width: 92,
                            onPressed: () {},
                            colorBegin:
                                const Color.fromARGB(255, 220, 143, 219),
                            colorEnd: const Color.fromARGB(255, 147, 140, 237),
                            borderRadius: 9,
                            text: "Add to order",
                            textSize: 11),
                        const SizedBox(height: 15),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 14,
                              child: Image.asset(
                                "assets/images/grafiken/star.png",
                              ),
                            ),
                            Text(
                              " 4.8",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: "Inter",
                                  color: Colors.white.withOpacity(0.8),
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          bottom: -20,
          child: SizedBox(
            height: 200,
            child: Image.asset(
              "assets/images/grafiken/Burger.png",
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}