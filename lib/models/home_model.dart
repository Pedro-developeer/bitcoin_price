import 'package:bitcoin_price/services/requests/bitcoin_rquest.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeModel extends ChangeNotifier {
  static HomeModel of(BuildContext context) => Provider.of<HomeModel>(context, listen: false);

  primeiraChamada() async {
    await ComunicationApiBitcoin.getBitcoins();
    notifyListeners();
  }
}
