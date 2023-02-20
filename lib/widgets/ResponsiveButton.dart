import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/Screen/Navbar/main_page.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width = 280, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10), color: Colors.blueGrey.shade100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isResponsive == true
              ? Text('Book Trip Now', style: TextStyle(color: Colors.white))
              : Container(),
          isResponsive == true
              ? SizedBox(
                  width: 40,
                )
              : SizedBox(
                  width: 0,
                ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black12,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black45,
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
