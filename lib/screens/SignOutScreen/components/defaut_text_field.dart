import 'package:bitcoin_price/utils/constants.dart';
import 'package:flutter/material.dart';

class DefautTextField extends StatelessWidget {
  const DefautTextField({
    Key? key,
    this.onChanged,
  }) : super(key: key);
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true, // dont forget
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Constants.kWhiteStokerColor,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Constants.kWhiteFillColor,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Constants.kWhiteStokerColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
