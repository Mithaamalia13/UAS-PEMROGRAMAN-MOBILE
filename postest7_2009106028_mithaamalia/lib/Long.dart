import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:postest7_2009106028_mithaamalia/cart.dart';

class Long extends StatelessWidget {
  const Long({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference baju = firestore.collection("Baju");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa85cf9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 95),
              child: Image.asset(
                'assets/logoAtas.png',
                fit: BoxFit.contain,
                height: 25,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Image.asset("assets/Long.png")),
                    ],
                  )),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    baju.add({
                      'nama': "LongSleeve",
                      'Harga': 28000,
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => MyHomePage()),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(99))),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xffa85cf9),
                        borderRadius: BorderRadius.circular(99)),
                    child: Container(
                      width: 230,
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        'BUY',
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
