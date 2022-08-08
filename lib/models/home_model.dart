import 'package:bitcoin_price/services/objects/bitcoin_prices.dart';
import 'package:bitcoin_price/services/requests/bitcoin_rquest.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeModel extends ChangeNotifier {
  static HomeModel of(BuildContext context) =>
      Provider.of<HomeModel>(context, listen: false);

  String? _onChangedSearch;
  String? get onChangedSearch => _onChangedSearch;
  set onChangedSearch(String? value) {
    _onChangedSearch = value;
    notifyListeners();
  }

  List<BitcoinObject> _listaBitcoin = [];
  List<BitcoinObject> get listaBitcoin => _listaBitcoin;
  set listaBitcoin(List<BitcoinObject> value) {
    _listaBitcoin = value;
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  primeiraChamada() async {
    await ComunicationApiBitcoin.fetchCoin();
    listaBitcoin = await ComunicationApiBitcoin.fetchCoin();
    isLoading = true;
    notifyListeners();
  }
}
