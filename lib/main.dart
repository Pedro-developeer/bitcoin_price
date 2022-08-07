import 'package:bitcoin_price/models/home_model.dart';
import 'package:flutter/material.dart';
import 'screens/Welcome/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeModel(),
        ),
      ],
      child: const MaterialApp(
        home: WelcomeScreen(),
      ),
    ),
  );
}
