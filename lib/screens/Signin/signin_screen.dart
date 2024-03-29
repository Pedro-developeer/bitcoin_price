import 'package:bitcoin_price/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../SignOut/components/defaut_text_field.dart';
import '../Welcome/components/default_button.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Constants.kWhite),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Constants.kBlack,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "E-mail",
                  textAlign: TextAlign.start,
                  style: TextStylesConstants.kDefaultTextFieldStyle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                DefautTextField(
                  onChanged: (value) => {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  "Confirmar Senha",
                  style: TextStylesConstants.kDefaultTextFieldStyle,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                DefautTextField(
                  onChanged: (value) => {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
                Center(
                  child: DefaultButton(
                    onPressed: () {},
                    text: 'Entrar',
                  ),
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStylesConstants.kDefaultTextFieldStyle,
                      text: 'Você já não temuma conta? ',
                      children: [
                        TextSpan(
                          text: 'Cadastra-se',
                          style: TextStylesConstants.kDefaultTextFieldStyleBold,
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
