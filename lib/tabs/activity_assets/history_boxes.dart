import 'package:flutter/material.dart';

class HistoryBoxes extends StatelessWidget {
  final List<Widget> items = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // This SingleChildScrollView allows the horizontal scrolling of the contents
      // of the child of Container, which is Row
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // The children below are boxes, will have to replace with a map of a list soon
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: 164,
              height: 91,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0x7f000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: 164,
              height: 91,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0x7f000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: 164,
              height: 91,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0x7f000000),
                  width: 1,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: 164,
              height: 91,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0x7f000000),
                  width: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
