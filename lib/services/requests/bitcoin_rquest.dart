import 'dart:convert';
import 'package:bitcoin_price/services/objects/bitcoin_prices.dart';
import 'package:http/http.dart' as http;

class ComunicationApiBitcoin {
  static Future<List<BitcoinObject>> fetchCoin() async {
    dynamic coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=80&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(BitcoinObject.fromJson(map));
          }
        }
      }
      return coinList.cast<BitcoinObject>();
    } else {
      throw Exception('Falha ao carregar os dados');
    }
  }
}
