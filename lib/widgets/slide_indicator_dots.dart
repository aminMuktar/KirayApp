import 'package:flutter/material.dart';

class SlideIndicatorDots extends StatelessWidget {
  bool isActive;
   SlideIndicatorDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(
          milliseconds: 300,

        ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.all(
            Radius.circular(30))
      ),
    );
  }
}








