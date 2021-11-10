import 'package:blood_electrophorese/screens/bloodStatus/bloodScreen.dart';
import 'package:blood_electrophorese/screens/electrophorese/electroScreen.dart';
import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20.0),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BloodScreen()));
            },
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), color: Colors.red),
              child: Center(
                  child: Text(
                "groupe sanguins".toUpperCase(),
                textAlign: TextAlign.center,
                softWrap: true,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20.0),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ElectroScreen()));
            },
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), color: Colors.red),
              child: Center(
                  child: Text("electrophorese".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white))),
            ),
          )
        ],
      ),
    ));
  }
}
