import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sepetim extends StatelessWidget {
  const sepetim({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Text(
          "Sepetim",
          style: TextStyle(
              color: Colors.cyan, fontSize: 22, fontWeight: FontWeight.bold),
        )),
        ListTile(
          title: Text("Çikolatalı Gofret"),
          subtitle: Text("2 adet x 7.50 TL"),
          trailing: Text("15 TL"),
        ),
        ListTile(
          title: Text("Ekmek"),
          subtitle: Text("2 adet x 5TL"),
          trailing: Text("10 TL"),
        ),
        ListTile(
          title: Text("Ananas"),
          subtitle: Text("1 adet x 20TL"),
          trailing: Text("20 TL"),
        ),
        ListTile(
          title: Text("Domates"),
          subtitle: Text("2 kilo x 9TL"),
          trailing: Text("18 TL"),
        ),
        ListTile(
          title: Text("IceTea"),
          subtitle: Text("6 adet x 20TL"),
          trailing: Text("120 TL"),
        ),
        SizedBox(
          height: 22,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                children: [
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 2, 2),
                        fontSize: 19.5,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "183 TL",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.all(70.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),
                color: Color.fromARGB(255, 255, 17, 0)),
            child: Center(
                child: Text(
              "Alışverişi Tamamla",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
        ),
      ],
    );
  }
}
