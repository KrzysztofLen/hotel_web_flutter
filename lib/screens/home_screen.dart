import 'package:flutter/material.dart';
import 'package:web_burger/screens/page_screen.dart';

import 'package:web_burger/widgets/app_bar.dart';
import 'package:web_burger/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF414466),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1982.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Body(),
                Container(
                  width: 450,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: PageScreen(title: 'Flutter Slider Page'),
                  ),
                ),
              ],
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
