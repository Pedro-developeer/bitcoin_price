import 'package:bitcoin_price/utils/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefautTextField extends StatelessWidget {
  DefautTextField({
    Key? key,
    this.onChanged,
    this.hintText,
    this.suffixIcon,
    this.keyboardType,
  }) : super(key: key);

  final void Function(String)? onChanged;
  String? hintText;
  Widget? suffixIcon;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStylesConstants.kDefaultTextFieldStyleGray,
        filled: true, // dont forget
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Constants.kWhiteStokerColor,
            width: 2,
          ),
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        fillColor: Constants.kWhiteFillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Constants.kWhiteStokerColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
