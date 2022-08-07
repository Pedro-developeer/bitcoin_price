import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCardFavorite extends StatelessWidget {
  const ButtonCardFavorite({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
          shadowColor: MaterialStateProperty.all<Color>(
            Colors.transparent,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          "Favorite uma moeda",
          style: GoogleFonts.inter(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
