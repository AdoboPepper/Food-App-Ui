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
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                  PageView.builder(
                    itemCount: demoBigImages.length,
                    itemBuilder: (context, index) =>
                        Image.asset(demoBigImages[index]),
                  ),

                    Positioned(
                      bottom: defaultPadding,
                      right: defaultPadding,
                      child: Row(
                        children: List.generate(
                          demoBigImages.length,
                              (index) => Padding(
                              padding: const EdgeInsets.only(left: defaultPadding / 4),
                              //child: IndicatorDot(isActive: index == _currentPage),
                              ),
                        ),
                      ),
                    )
                  ],
                ),
          ),
          )
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key, required this.isActive,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(12),),
      ),
    );
  }
}
