import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingPage extends StatelessWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            new ThemeData(scaffoldBackgroundColor: CupertinoColors.systemGreen),
        home: Scaffold(
            body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              alignment: Alignment.center,
              height: 427,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0)),
              child: Column(
                children: [
                  ratingBar,
                  rateText,
                  textDes,
                  button,
                  text,
                ],
              ),
            ),
          ),
        )));
  }
}

Widget ratingBar = Container(
  padding: const EdgeInsets.symmetric(vertical: 24.0),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 32,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 32,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 32,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 32,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 32,
      ),
    ],
  ),
);

Widget rateText = const Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    'Rate our app',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ),
);

Widget textDes = const Padding(
  padding: EdgeInsets.all(16.0),
  child: Text(
    'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.',
    style: TextStyle(fontSize: 16),
    textAlign: TextAlign.center,
  ),
);

Widget button = Container(
  margin: EdgeInsets.only(top: 30, bottom: 10),
  width: 311,
  height: 51,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: CupertinoColors.systemGreen,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    ),
    onPressed: () {},
    child: const Text(
      'I love it!',
      textAlign: TextAlign.center,
    ),
  ),
);

Widget text = Padding(
  padding: const EdgeInsets.all(16.0),
  child: Text(
    'Don’t like the app? Let us know.',
    textAlign: TextAlign.center,
    style: TextStyle(color: CupertinoColors.activeGreen),
  ),
);
