import 'package:bitcoin_price/models/home_model.dart';
import 'package:bitcoin_price/screens/Home/components/crypto_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    HomeModel.of(context).primeiraChamada();
  }

  final List<Color> gradientColors = [Constants.kBlack, Constants.kLightGrey];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<HomeModel>(
        builder: (context, state, _) => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  state.isLoading
                      ? ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: state.listaBitcoin.length,
                          itemBuilder: (context, index) {
                            return CardBitcoinPrices(
                              cryptoName: state.listaBitcoin[index].name,
                              sigla: state.listaBitcoin[index].symbol,
                              cryptoImage: state.listaBitcoin[index].image,
                              cryptoPriceCorrent:
                                  state.listaBitcoin[index].currentPrice,
                              cryptoPrice:
                                  state.listaBitcoin[index].priceChange24h,
                              cryptoPricePercent: state
                                  .listaBitcoin[index].priceChangePercentage24h,
                            );
                          },
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
