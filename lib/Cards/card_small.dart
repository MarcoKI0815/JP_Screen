import 'package:flutter/material.dart';
import 'package:jp_screen_app/Cards/detail_card.dart';

class ItemCardSmall extends StatelessWidget {
  final String imagePath;
  final String imageTitle;
  final String imageDescription;
  final String imageLikes;

  const ItemCardSmall(
      {super.key,
      required this.imagePath,
      required this.imageTitle,
      required this.imageDescription,
      required this.imageLikes});

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 27;
    return SizedBox(
      height: 270,
      width: 205,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              useSafeArea: false,
              context: context,
              builder: (BuildContext context) {
                return const DetailCard();
              },
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(
                  color: const Color.fromARGB(233, 162, 155, 216),
                  width: 0.9,
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 103, 103, 106),
                    Color.fromARGB(255, 108, 101, 185),
                    Color.fromARGB(255, 108, 75, 181),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 160, height: 160, child: Image.asset(imagePath)),
                  const SizedBox(height: 8),
                  Text(
                    imageTitle,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    imageDescription,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 11,
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "₳ 8.99",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.5,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_border_outlined,
                            color: Color.fromARGB(255, 172, 170, 170),
                            size: 14,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            imageLikes,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontSize: 12.5,
                              color: Color.fromARGB(255, 172, 170, 170),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
