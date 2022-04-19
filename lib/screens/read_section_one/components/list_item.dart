import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utils/scale_util.dart';

class List_item extends StatelessWidget {
  final name;
  final imagePath;
  List_item({
    Key key,
    this.imagePath,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScaleUtil scU = ScaleUtil(context);

    return Container(
      margin: EdgeInsets.only(
        bottom: scU.scale(40),
      ),
      child: Row(
        children: [
          Container(
            height: scU.scale(50),
            width: scU.scale(150),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: kSecondaryColor,
              ),
            ),
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                  // fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: scU.scale(70),
            height: scU.scale(70),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
