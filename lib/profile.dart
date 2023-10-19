import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class ProfilePostPage extends StatefulWidget {
  const ProfilePostPage({super.key});

  @override
  State<ProfilePostPage> createState() => _ProfilePostPageState();
}

class _ProfilePostPageState extends State<ProfilePostPage> {
  int? current = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGreen,
        title: Text('Profile',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        leadingWidth: 80,
        leading: TextButton(
            onPressed: () {},
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text('Logout', style: TextStyle(color: Colors.white))),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                  margin: EdgeInsets.only(bottom: profileHeight / 3),
                  child: coverContainer),
              Positioned(
                  top: coverHeight - profileHeight * 2 / 3, child: avatar),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Column(children: [
                      nameText,
                      bio,
                    ]),
                  ),
                  CustomSlidingSegmentedControl(
                    isStretch: true,
                    initialValue: 1,
                    padding: 16,
                    curve: Curves.easeInToLinear,
                    thumbDecoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: CupertinoColors.systemGrey5),
                    children: {
                      1: Text(
                        'Posts',
                        style: TextStyle(
                            color: current == 1
                                ? CupertinoColors.systemGreen
                                : Colors.grey),
                      ),
                      2: Text(
                        'Photos',
                        style: TextStyle(
                            color: current == 2
                                ? CupertinoColors.systemGreen
                                : Colors.grey),
                      ),
                    },
                    onValueChanged: (value) {
                      setState(() {
                        current = value;
                      });
                      ;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  current == 1 ? postList : photoList,
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

final double coverHeight = 200;
Widget coverContainer = Container(
  decoration: BoxDecoration(color: CupertinoColors.systemGreen),
  height: coverHeight,
);

final double profileHeight = 158;
Widget avatar = CircleAvatar(
  radius: profileHeight / 2,
  backgroundColor: Colors.white,
  backgroundImage: NetworkImage(
      'https://toppng.com/uploads/preview/cool-avatar-transparent-image-cool-boy-avatar-11562893383qsirclznyw.png'),
);

Widget nameText = Text(
  'Victoria Robertson',
  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
);
Widget bio = Text(
  'A mantra goes here',
  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
);

Widget postList = Column(
  children: [
    feed,
    feed,
    feed,
  ],
);

Widget photoList = Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [photoBox, headerText, photoBox],
);

Widget headerText = Container(
    alignment: Alignment.centerLeft,
    child: Text(
      'Header',
      style: TextStyle(fontWeight: FontWeight.w500),
    ));

Widget photoBox = Container(
  margin: EdgeInsets.symmetric(vertical: 8),
  padding: EdgeInsets.all(8),
  height: 350,
  decoration: BoxDecoration(
      color: CupertinoColors.systemGrey5,
      borderRadius: BorderRadius.circular(8.0)),
);
