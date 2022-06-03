import 'package:flutter/material.dart';

class DefautTextField extends StatelessWidget {
  const DefautTextField({
    Key? key,
    this.onChanged,
  }) : super(key: key);
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            filled: true, // dont forget
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0XFFE3E3E3),
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Color(0XFFF5F5F5),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0XFFE3E3E3),
                width: 3,
              ),
            )),
      ),
    );
  }
}
