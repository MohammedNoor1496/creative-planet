import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utils/scale_util.dart';

class List_item_Double extends StatelessWidget {
  final firstname;
  final secondname;
  final imagePath;
  List_item_Double({
    Key key,
    this.imagePath,
    this.firstname,
    this.secondname,
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
          Column(
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
                    firstname,
                    style: TextStyle(
                      // fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: scU.scale(
                  10,
                ),
              ),
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
                    secondname,
                    style: TextStyle(
                      // fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
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
