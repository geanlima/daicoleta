import 'package:flutter/material.dart';

class MainBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, 158.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200, vertical: 50),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
          ),
          color: const Color(0xffffffff),
        ),
      ),
    );
  }
}
