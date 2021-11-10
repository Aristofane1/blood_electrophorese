import 'package:flutter/material.dart';

class DetailBloodScreen extends StatelessWidget {
  final String groupe;
  final String donneA;
  final String recoitDe;
  DetailBloodScreen(
      {Key? key,
      required this.groupe,
      required this.donneA,
      required this.recoitDe})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(groupe.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      color: Colors.red)),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Container(
                height: size.height * 0.5,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Peux donner à:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                    Text(donneA.toUpperCase(),
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text("Peux recevoir de:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                    Text(recoitDe.toUpperCase(),
                        style: TextStyle(fontSize: 25, color: Colors.white))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
