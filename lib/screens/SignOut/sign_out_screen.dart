import 'package:bitcoin_price/screens/Home/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/constants.dart';
import '../Welcome/components/default_button.dart';
import 'components/defaut_text_field.dart';

class SignOutScreen extends StatelessWidget {
  const SignOutScreen({Key? key}) : super(key: key);

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
            child: SingleChildScrollView(
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
                    "Senha",
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      text: 'Criar conta',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStylesConstants.kDefaultTextFieldStyle,
                        text: 'Você já tem uma conta? ',
                        children: [
                          TextSpan(
                            text: 'Faça login',
                            style:
                                TextStylesConstants.kDefaultTextFieldStyleBold,
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
      ),
    );
  }
}
