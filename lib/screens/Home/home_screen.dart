import 'package:bitcoin_price/models/home_model.dart';
import 'package:bitcoin_price/screens/Home/components/crypto_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart';
import '../SignOut/components/defaut_text_field.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text(
                            "Bem-vindo(a) de volta!",
                            style: TextStylesConstants
                                .kDefaultTextFieldStyleHomeBold,
                          ),
                          Text(
                            "Nós separamos as melhores notícias\nsobre Bitcoin e Etherum para você.",
                            style: TextStylesConstants.kDefaultHomeScreen,
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CircleAvatar(
                          radius: 30,
                          child: Image.asset(
                            "lib/assets/images/astro.jpeg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                      : const CircularProgressIndicator(
                          color: Constants.kBlack,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
