import 'package:flutter/material.dart';

class TargetWidget extends StatelessWidget {
  const TargetWidget({
    Key key,
    this.targetText,
  }) : super(key: key);

  final targetText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              targetText,
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.check,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
