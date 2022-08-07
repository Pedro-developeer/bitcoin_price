import 'package:bitcoin_price/models/home_model.dart';
import 'package:bitcoin_price/screens/Home/components/button_card_favorite.dart';
import 'package:bitcoin_price/screens/Home/components/notice_card.dart';
import 'package:bitcoin_price/services/requests/bitcoin_rquest.dart';
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
                  DefautTextField(
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Constants.kLightGrey,
                      size: 30,
                    ),
                    hintText: "Pesquise por alguma criptomoeda",
                    onChanged: (value) => {},
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        "Moedas favoritas",
                        style:
                            TextStylesConstants.kDefaultTextFieldStyleHomeBold,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Constants.kPinkContainer,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Todas as moedas que \nvocê favoritar vão \naparecer aqui",
                                    style: TextStylesConstants
                                        .kDefaultTextFieldStyleWhite,
                                  ),
                                  ButtonCardFavorite(
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              Flexible(
                                child: Center(
                                  child: Image.asset(
                                    "lib/assets/images/Bitcoin_perspective_matte.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        "Últimas noticias",
                        style:
                            TextStylesConstants.kDefaultTextFieldStyleHomeBold,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          NoticCard(),
                          NoticCard(),
                          NoticCard(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
