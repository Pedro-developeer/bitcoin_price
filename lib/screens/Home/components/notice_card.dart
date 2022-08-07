import 'package:bitcoin_price/utils/constants.dart';
import 'package:flutter/material.dart';

class NoticCard extends StatelessWidget {
  const NoticCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Constants.kWhiteStokerColor,
            width: 1.5,
          ),
          color: Constants.kGrayContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              Text(
                "Previsão para Bitcoin em agosto da Binance",
                style: TextStylesConstants.kDefaultTextFieldStyleBold,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "A crise na indústria de criptomoedas fez com que a Coinbase...",
                style: TextStylesConstants.kDefaultTextFieldStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}