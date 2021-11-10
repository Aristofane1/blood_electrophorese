import '../../bloodData.dart';
import '../../screens/bloodStatus/detailScreen.dart';
import '../../widgets/cardScreen.dart';
import 'package:flutter/material.dart';

class RhesusScreen extends StatelessWidget {
  final String groupe;
  const RhesusScreen({Key? key, required this.groupe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardItem(
                  size: size,
                  texte: "${groupe.toUpperCase()} +",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailBloodScreen(
                              groupe: "${groupe.toUpperCase()} +",
                              donneA: bloodData
                                  .firstWhere((element) =>
                                      element["groupe"] ==
                                      "${groupe.toUpperCase()}+")["donne"]
                                  .toString(),
                              recoitDe: bloodData
                                  .firstWhere((element) =>
                                      element["groupe"] ==
                                      "${groupe.toUpperCase()}+")["recoit"]
                                  .toString(),
                            )));
                  }),
              CardItem(
                  size: size,
                  texte: "${groupe.toUpperCase()} -",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailBloodScreen(
                              groupe: "${groupe.toUpperCase()} -",
                              donneA: bloodData
                                  .firstWhere((element) =>
                                      element["groupe"] ==
                                      "${groupe.toUpperCase()}-")["donne"]
                                  .toString(),
                              recoitDe: bloodData
                                  .firstWhere((element) =>
                                      element["groupe"] ==
                                      "${groupe.toUpperCase()}-")["recoit"]
                                  .toString(),
                            )));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
