import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
              color: Colors.black, offset: Offset(0.0, 2.0), blurRadius: 6.0)
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: '<Renan',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 26),
              children: <TextSpan>[
                TextSpan(
                  text: 'Kanu>',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
