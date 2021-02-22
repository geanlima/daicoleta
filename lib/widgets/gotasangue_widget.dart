import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GotaSangueWidget extends StatelessWidget {
  final String _label;
  final bool _value;
  GotaSangueWidget(this._label, this._value);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 90.0,
      color: _value ? Color(0xff7380f2) : Color(0xffFFFFFF),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
         // shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(0x0f000000),
              offset: Offset(0, 3),
              blurRadius: 20,
            ),
          ],
        ),
        child: Container(
          child: Column(
            children: [
              Container(
                child: _gotaSangue(),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x0f000000),
                      offset: Offset(0, 3),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Text(
                  _label,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: _value ? Color(0xfff9f9f9) : Color(0xff3a3a3a),
                    fontWeight: FontWeight.w500,
                    height: 1.2727272727272727,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _gotaSangue() {
    return Container(
      width: 45.0,
      height: 40.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/blood.png'), fit: BoxFit.fill),
      ),
    );
  }
}
