import 'package:dot_indicators/views/page_one.dart';
import 'package:dot_indicators/views/page_three.dart';
import 'package:dot_indicators/views/page_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.lightBlue,
              dotColor: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}