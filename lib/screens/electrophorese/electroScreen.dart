import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ElectroScreen extends StatelessWidget {
  const ElectroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.heartbeat,
            size: size.height * 0.2,
            color: Colors.red,
          ),
          Center(
            child: Text("Combinaison Possible",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          DataTable(
              dividerThickness: 5.0,
              headingTextStyle: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              columns: [
                DataColumn(label: Text("On a dit NON")),
                DataColumn(label: Text("On a dit OUI"))
              ],
              rows: [
                oneRow("AS AS".toUpperCase(), "AA AA".toUpperCase()),
                oneRow("AS AC".toUpperCase(), "AA AS".toUpperCase()),
                oneRow("AS SS".toUpperCase(), "AA AC".toUpperCase()),
                oneRow("AS SC".toUpperCase(), "AA SA".toUpperCase()),
                oneRow("SA SC".toUpperCase(), "AA SC".toUpperCase()),
                oneRow("SS SS".toUpperCase(), "".toUpperCase()),
              ])
        ],
      )),
    );
  }

  DataRow oneRow(String nonTexte, String ouiTexte) {
    return DataRow(cells: [
      DataCell(Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nonTexte),
          Icon(
            Icons.cancel,
            color: Colors.red,
          )
        ],
      ))),
      DataCell(ouiTexte.length.toInt() > 1
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ouiTexte),
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                )
              ],
            )
          : Text(""))
    ]);
  }
}
