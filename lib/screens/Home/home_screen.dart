import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(
                        "Bem-vindo(a) de volta!",
                        style:
                            TextStylesConstants.kDefaultTextFieldStyleHomeBold,
                      ),
                      Text(
                        "Nós separamos as melhores notícias\nsobre Bitcoin e Etherum para você.",
                        style: TextStylesConstants.kDefaultHomeScreen,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset(
                      "assets/images/bitcoin.png",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
