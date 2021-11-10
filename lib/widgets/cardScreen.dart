import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Function() press;
  final String texte;
  CardItem(
      {Key? key, required this.size, required this.press, required this.texte})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: press,
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.red),
        child: Center(
            child: Text(texte.toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white))),
      ),
    );
  }
}
