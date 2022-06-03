import 'package:flutter/material.dart';

import 'components/defaut_text_field.dart';

class SignOutScreen extends StatelessWidget {
  const SignOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,  
        body: SafeArea(
          child: Column(
            children: [
              Text("E-mail"),
              DefautTextField(
                onChanged: (value) => {},
              ),
              Text("Senha"),
              DefautTextField(
                onChanged: (value) => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
