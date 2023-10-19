import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_1/blog_post.dart';
import 'package:homework_1/image.dart';
import 'package:homework_1/profile.dart';
import 'package:homework_1/rating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Homework',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: CupertinoColors.activeGreen),
        useMaterial3: true,
      ),
      home: const ProfilePostPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Feed',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: TextButton(onPressed: () {}, child: const Text('Back')),
        actions: <Widget>[
          TextButton(onPressed: () {}, child: const Text('Filter')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              searchBar,
              const SizedBox(
                height: 10,
              ),
              feed,
              feed,
              feed,
              feed,
              feed,
              const SizedBox(
                height: 10,
              ),
              box,
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

Widget searchBar = TextField(
  decoration: InputDecoration(
    filled: true,
    fillColor: CupertinoColors.systemGrey5,
    contentPadding: const EdgeInsets.all(16.0),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(50.0),
    ),
    hintText: 'Search',
    hintStyle: TextStyle(color: CupertinoColors.systemGrey),
  ),
);

Widget feed = Padding(
  padding: const EdgeInsets.symmetric(vertical: 4.0),
  child: Row(
    children: [
      Container(
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: CupertinoColors.systemGrey5),
        width: 50,
        height: 50,
      ),
      const Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Text(
                  'Header',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              Text(
                '8m ago',
                style: TextStyle(color: CupertinoColors.systemGrey2),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          Text(
              'He\'ll want to use your yacht, and I don\'t want this thing smelling like fish.')
        ],
      ))
    ],
  ),
);

Widget box = Container(
  padding: EdgeInsets.all(15),
  height: 230,
  decoration: BoxDecoration(
      color: CupertinoColors.systemGrey5,
      borderRadius: BorderRadius.circular(8.0)),
);

Widget bottomNavBar = BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: Colors.green,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: CupertinoColors.systemGrey5,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.circle, color: CupertinoColors.systemGrey5),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.circle, color: CupertinoColors.systemGrey5),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(Icons.circle, color: CupertinoColors.systemGrey5),
          label: ''),
    ]);
