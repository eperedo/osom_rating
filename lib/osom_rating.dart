import 'package:flutter/material.dart';

class OsomRating extends StatelessWidget {
  final int totalStars;

  OsomRating(this.totalStars);

  @override
  Widget build(BuildContext context) {
    final stars = <Widget>[];
    for (var i = 0; i < totalStars; i++) {
      stars.add(Icon(
        Icons.star,
        color: Colors.yellow,
        size: 40.0,
      ));
    }

    return Row(children: stars);
  }
}
