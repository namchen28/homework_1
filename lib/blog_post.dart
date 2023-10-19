import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class BlogPostPage extends StatelessWidget {
  const BlogPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 50.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  imageContainer,
                  const SizedBox(
                    height: 20,
                  ),
                  blogTitle,
                  const SizedBox(
                    height: 10,
                  ),
                  author,
                  const SizedBox(
                    height: 10,
                  ),
                  content,
                ],
              ),
            ),
          ),
          bottomNavigationBar: bottomNavBar,
        ));
  }
}

Widget imageContainer = Container(
  padding: EdgeInsets.all(8),
  height: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    color: CupertinoColors.systemGrey5,
  ),
);

Widget blogTitle = Text(
  "Post Title here...",
  style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
  ),
);

Widget author = Text(
  'Author',
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
);

Widget content = Text(
  'Labore sunt veniam amet est. Minim nisi dolor eu ad incididunt cillum elit ex ut. Dolore exercitation nulla tempor consequat aliquip occaecat. Nisi id ipsum irure aute. Deserunt sit aute irure quis nulla eu consequat fugiat Lorem sunt magna et consequat labore. Laboris incididunt id Lorem est duis deserunt nisi dolore eiusmod culpa exercitation consectetur. Fugiat do aliqua laboris cillum sint dolor officia adipisicing excepteur fugiat officia. Cupidatat ut elit consequat ea laborum occaecat laborum aute consectetur Lorem exercitation. Lorem anim minim officia aliquip commodo deserunt mollit. Duis deserunt quis cillum voluptate duis ipsum quis incididunt elit excepteur excepteur labore duis cillum. Voluptate sint nulla minim eiusmod in nulla. Ea id ad duis esse adipisicing culpa ex esse ea dolore consequat. Reprehenderit eu minim veniam aliquip do ipsum duis do qui adipisicing aliquip ad occaecat. Enim reprehenderit sunt do do. Ex fugiat nisi sit anim culpa nisi. Non labore fugiat culpa magna. Commodo esse Lorem ex duis do et do. Est laboris cupidatat ad est anim adipisicing sit labore do dolor officia. Fugiat consequat in excepteur reprehenderit id aliquip voluptate sint enim proident aliquip occaecat quis non. Ad nulla aliqua est amet aliqua sint est occaecat amet sunt. Ullamco laborum qui sint officia officia ad Lorem culpa minim voluptate occaecat id duis esse. Ullamco sunt magna consectetur excepteur. Id cupidatat proident ex ad elit laboris. Nulla aute sit occaecat laboris. Laboris minim aliquip exercitation elit commodo ipsum et fugiat sit anim laborum proident cillum laboris. Et cillum tempor esse sit anim et veniam. Tempor magna irure ex ea id fugiat. Ex eu sint tempor quis exercitation amet ut deserunt sit fugiat aliquip nostrud nulla. Eu sunt laborum elit consectetur tempor sunt dolore in sunt reprehenderit voluptate dolore adipisicing. Proident eiusmod reprehenderit quis sint exercitation voluptate non labore. Sunt non sint in Lorem occaecat dolore tempor ipsum et proident sit Lorem ipsum officia.',
  style: TextStyle(fontSize: 16, color: CupertinoColors.systemGrey),
);
