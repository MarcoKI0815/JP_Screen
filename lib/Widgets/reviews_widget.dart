import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reviews",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 11.5),
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SFIcon(
                SFIcons.sf_star_fill,
                fontSize: 11,
              ),
              SFIcon(
                SFIcons.sf_star_fill,
                fontSize: 11,
              ),
              SFIcon(
                SFIcons.sf_star_fill,
                fontSize: 11,
              ),
              SFIcon(
                SFIcons.sf_star_fill,
                fontSize: 11,
              ),
              SFIcon(
                SFIcons.sf_star,
                fontSize: 11,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "4.0",
                style: TextStyle(fontSize: 11.5),
              )
            ],
          ),
          SizedBox(
            height: 4,
          )
        ],
      ),
    );
  }
}