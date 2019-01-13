import 'package:flutter/material.dart';

class OsomRating extends StatelessWidget {
  /// The quantity of stars to be generated. Default to 5
  final int totalStars;

  /// The rating value. Default to 0
  final double rating;

  /// The color to be used for all the full/half stars. Default to yellow
  final Color colorStar;

  /// The color to be used for all the empty stars. Default to black
  final Color colorEmptyStar;

  /// The size of the stars. Default to 60.0
  final double sizeStar;

  /// The size of the stars. Default to 60.0
  final int minimunHalfValue;

  /// The event to be fired when user tap on a star.
  final onTapped;

  /// The event to be fired when user makes a double tap on a star.
  final onDoubleTapped;

  OsomRating(
      {this.totalStars = 5,
      this.rating = 0,
      this.minimunHalfValue = 5,
      this.colorStar = Colors.yellow,
      this.sizeStar = 60.0,
      this.onTapped,
      this.onDoubleTapped,
      this.colorEmptyStar = Colors.black});

  @override
  Widget build(BuildContext context) {
    final stars = <Widget>[];
    final decimalPart = int.parse(rating.toString().split('.')[1][0]);
    Icon currentIcon;
    for (double i = 0; i < totalStars; i++) {
      if (i >= rating) {
        currentIcon = Icon(
          Icons.star_border,
          color: colorEmptyStar,
          size: sizeStar,
        );
      } else if (i > rating - 1 && i < rating) {
        currentIcon = Icon(
          decimalPart >= minimunHalfValue ? Icons.star_half : Icons.star_border,
          color: decimalPart >= minimunHalfValue ? colorStar : colorEmptyStar,
          size: sizeStar,
        );
      } else {
        currentIcon = Icon(
          Icons.star,
          color: colorStar,
          size: sizeStar,
        );
      }
      stars.add(InkWell(
        child: currentIcon,
        onTap: onTapped != null ? () => onTapped(i + 1) : null,
        onDoubleTap: onDoubleTapped != null ? () => onDoubleTapped() : null,
      ));
    }

    return Row(children: stars);
  }
}
