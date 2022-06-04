import 'package:bitcoin_price/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../SignOut/sign_out_screen.dart';
import 'components/default_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              'Bem-vindo ao futuro!',
              style: TextStylesConstants.kDefaultTextFieldStyleHome,
            ),
            Image.asset(
              'lib/assets/images/simon-lee-hbFKxsIqclc-unsplash.png',
              height: MediaQuery.of(context).size.height * 0.67,
            ),
            DefaultButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignOutScreen(),
                  ),
                );
              },
              text: 'Crie sua conta já',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            RichText(
              text: TextSpan(
                style: TextStylesConstants.kDefaultTextFieldStyle,
                text: 'Você já tem uma conta? ',
                children: [
                  TextSpan(
                    text: 'Faça login',
                    style: TextStylesConstants.kDefaultTextFieldStyleBold,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignOutScreen(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
