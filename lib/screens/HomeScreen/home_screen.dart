import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../SignOutScreen/sign_out_screen.dart';
import 'components/default_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const Text(
              'Bem-vindo ao futuro!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
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
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                text: 'Você já tem uma conta? ',
                children: [
                  TextSpan(
                    text: 'Faça login',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Metropolis-Regular',
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
