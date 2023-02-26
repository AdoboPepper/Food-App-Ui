import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';
import 'package:food_app_ui/demoData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Text(
              "Deliver to".toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: kActiveColor),
            ),
            Text(
              "San Francisco",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Filter",
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              children: [
                Text(
                  "Deliver to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                Text(
                  "San Francisco",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Filter",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.81,
              child: Image.asset(demoBigImages[0]),
            ),
          )
        ],
      ),
    );
  }
}
