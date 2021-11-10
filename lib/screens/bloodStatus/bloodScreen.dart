import 'package:blood_electrophorese/screens/bloodStatus/rhesusScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/cardScreen.dart';
import 'package:flutter/material.dart';

class BloodScreen extends StatelessWidget {
  const BloodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.tint,
            size: size.height * 0.2,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardItem(
                  size: size,
                  texte: "a",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RhesusScreen(groupe: "a")));
                  }),
              CardItem(
                  size: size,
                  texte: "b",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RhesusScreen(groupe: "b")));
                  }),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardItem(
                  size: size,
                  texte: "ab",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RhesusScreen(groupe: "ab")));
                  }),
              CardItem(
                  size: size,
                  texte: "o",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RhesusScreen(groupe: "o")));
                  }),
            ],
          )
        ],
      ),
    );
  }
}
