import 'package:bitcoin_price/utils/constants.dart';
import 'package:flutter/material.dart';

class CardBitcoinPrices extends StatefulWidget {
  const CardBitcoinPrices({
    Key? key,
    this.cryptoName,
    this.cryptoPriceCorrent,
    this.sigla,
    this.cryptoImage,
    this.cryptoPrice,
    this.cryptoPricePercent,
  }) : super(key: key);

  final String? cryptoName;
  final dynamic cryptoPriceCorrent;
  final String? sigla;
  final String? cryptoImage;
  final double? cryptoPrice;
  final double? cryptoPricePercent;

  @override
  State<CardBitcoinPrices> createState() => _CardBitcoinPricesState();
}

class _CardBitcoinPricesState extends State<CardBitcoinPrices> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          widget.cryptoName!,
          style: TextStylesConstants.kDefaultTextFieldStyleHomeBold,
        ),
        subtitle: Text(
          "${widget.sigla!.toUpperCase()} \$${widget.cryptoPriceCorrent}",
          style: TextStylesConstants.kDefaultTextFieldStyleGraySmall,
        ),
        leading: Image.network(
          widget.cryptoImage!,
          height: 40,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.cryptoPrice!.toString().length > 6
                  ? "${widget.cryptoPrice!.toString().substring(0, 7)}..."
                  : widget.cryptoPrice!.toString(),
              style: TextStylesConstants.kDefaultTextFieldStyleBold,
              maxLines: 1,
            ),
            Text(
              widget.cryptoPricePercent!.toString().length > 6
                  ? "${widget.cryptoPricePercent!.toString().substring(0, 5)}%"
                  : widget.cryptoPricePercent!.toString(),
              style: widget.cryptoPricePercent! > 0
                  ? TextStylesConstants.kDefaultTextFieldStyleGreeSmall
                  : TextStylesConstants.kDefaultTextFieldStyleRedSmall,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
