import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style:
                  TextStyle(fontSize: headerSize, fontWeight: FontWeight.bold),
            )
          ],
        ),
        width: double.infinity,
        height: 80,
        margin: EdgeInsets.only(top: 10.0),
        color: footerColor,
      ),
    );
  }
}
