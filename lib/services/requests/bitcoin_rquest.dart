import 'dart:convert';
import 'package:bitcoin_price/services/objects/bitcoin_prices.dart';
import 'package:http/http.dart' as http;

class ComunicationApiBitcoin {
  static Future<BitcoinObjetct?> getBitcoins() async {
    String url = Uri.parse(
            "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=30&page=1&sparkline=false%27")
        .toString();

    dynamic response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      dynamic json = jsonDecode(response.body);
      for (var cripto in json) {
        return BitcoinObjetct.fromJson(cripto);
      }
    } else {
      throw Exception('Erro de request');
    }
  }
}
