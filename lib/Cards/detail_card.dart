import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_screen_app/Buttons/elevated_button.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

import '../Buttons/button.dart';
import '../Widgets/ingredients_widget.dart';
import '../Widgets/reviews_widget.dart';
import '../Widgets/toggle_switch_widget.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 753,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.6, 1],
              colors: [
                Color.fromARGB(255, 46, 43, 35),
                Color.fromARGB(255, 56, 66, 66),
              ],
            ),
          ),
        ),
        Positioned(
          top: -133,
          child: SizedBox(
            height: 395,
            child: Image.asset(
              "assets/images/grafiken/cupcakes_cat.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          top: 20,
          right: 15,
          height: 30,
          width: 30,
          child: CircleButton(
            child: SFIcon(
              SFIcons.sf_xmark,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 175,
          left: 25,
          right: 25,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
              child: Container(
                height: 340,
                padding: const EdgeInsets.fromLTRB(25, 16, 25, 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                      color: const Color.fromARGB(255, 193, 170, 218),
                      width: 0.2),
                ),
                child: const Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Color.fromARGB(255, 166, 155, 151),
                          size: 15,
                        ),
                        Text(
                          " 200",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Inter",
                              color: Color.fromARGB(255, 166, 155, 151),
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      "Mogli's Cup",
                      style: TextStyle(
                          fontSize: 25,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi\naccumsan feugiat magna aliquam feugiat ac et. Pulnivar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                      style: TextStyle(fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    Text(
                      "₳ 8.99",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 91, 87, 82),
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IngredientsWidget(),
                        ReviewsWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const ToggleswitchWidget(),
        const Positioned(
          bottom: 155,
          right: 100,
          height: 30,
          width: 30,
          child: CircleButton(
            child: SFIcon(
              SFIcons.sf_minus,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          bottom: 155,
          right: 70,
          child: Text(
            "1",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        const Positioned(
          bottom: 155,
          right: 21,
          height: 30,
          width: 30,
          child: CircleButton(
            child: SFIcon(
              SFIcons.sf_plus,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 21,
          right: 21,
          child: ColoredElevatedButton(
              height: 50,
              width: 185,
              onPressed: () {
                Navigator.pop(context);
              },
              colorBegin: const Color.fromARGB(255, 251, 123, 223),
              colorEnd: const Color.fromARGB(255, 241, 152, 152),
              borderRadius: 10,
              text: "Add to order for ₳ 8.99",
              textSize: 17),
        ),
      ],
    );
  }
}
