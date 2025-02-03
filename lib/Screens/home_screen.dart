import 'package:flutter/material.dart';

import 'package:flutter_sficon/flutter_sficon.dart';

import '../Buttons/category_buttons.dart';
import '../Cards/card_big.dart';
import '../Cards/card_small.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/hintergründe/bg_mainscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 75,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose Your Favorite\nSnack",
                  style: TextStyle(
                    fontSize: 21.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BuildCategoryButton(
                        width: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SFIcon(
                              SFIcons.sf_takeoutbag_and_cup_and_straw,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            Text(
                              " All categories ",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                letterSpacing: -0.5,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SFIcon(
                              SFIcons.sf_chevron_down,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ],
                        ),
                      ),
                      const BuildCategoryButtonSelected(
                        child: Text(
                          "Salty",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: -0.5,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      BuildCategoryButton(
                        width: 90,
                        child: Text(
                          "Sweet",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            letterSpacing: -0.5,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      BuildCategoryButton(
                        width: 90,
                        child: Text(
                          "Dry Fruits",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            letterSpacing: -0.5,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 42),
                const ItemCardBig(),
                const SizedBox(height: 55),
                const Text(
                  " We Recommend",
                  style: TextStyle(
                    height: 0,
                    fontSize: 15,
                    fontFamily: "Inter",
                    color: Colors.white,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemCardSmall(
                        imagePath: "assets/images/grafiken/cupcakes_cat.png",
                        imageTitle: "Mogli's Cup",
                        imageDescription: "Strawberry ice cream",
                        imageLikes: "200",
                      ),
                      ItemCardSmall(
                        imagePath: "assets/images/grafiken/Ice_cream.png",
                        imageTitle: "Balu's Cup",
                        imageDescription: "Pistachio ice cream",
                        imageLikes: "100",
                      ),
                      ItemCardSmall(
                        imagePath:
                            "assets/images/grafiken/Ice_cream.png", //Grafik Ändern!
                        imageTitle: "Balu's Cup",
                        imageDescription: "Pistachio ice cream",
                        imageLikes: "100",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCategoryButton(Widget child, double width) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: width,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(child: child),
  );
}

Widget buildCategoryButtonSelected(Widget child) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    width: 90,
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.yellow,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(child: child),
  );
}
