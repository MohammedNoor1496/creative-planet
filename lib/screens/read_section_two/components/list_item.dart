import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utils/scale_util.dart';

class List_item extends StatelessWidget {
  final name;
  List_item({
    Key key,
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
            height: scU.scale(70),
            width: scU.scale(180),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 122, 207, 125),
              border: Border.all(
                width: 1,
                color: kSecondaryColor,
              ),
            ),
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
