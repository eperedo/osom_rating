import 'package:flutter/material.dart';

import 'package:osom_rating/osom_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double ratingValue = 3.3;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Osom Rating Demo'),
          ),
          body: Container(
            child: Center(
              child: OsomRating(
                rating: ratingValue,
                sizeStar: 50,
                minimunHalfValue: 2,
                totalStars: 7,
                onTapped: (currentRating) {
                  setState(() {
                    this.ratingValue = currentRating;
                  });
                },
                onDoubleTapped: () {
                  setState(() {
                    this.ratingValue = 0;
                  });
                },
              ),
            ),
          )),
    );
  }
}
