import 'dart:ui';

import 'package:flutter/material.dart';

class conversor extends StatefulWidget {
  @override
  State<conversor> createState() => _conversorState();
}

class _conversorState extends State<conversor> {
  TextEditingController graus = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Insira a temperatura em °C :',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            width: 180,
            height: 40,
            child: TextField(
              controller: graus,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 0),
                hintText: 'Exemplo: 30°C',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                prefixIcon: Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 1, right: 1),
                  child: Image.asset(
                    'assets/temperatura.png',
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            height: 30,
            width: 100,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.amberAccent,
                side: BorderSide(width: 1, color: Colors.black),
              ),
              onPressed: () {
                print('${graus.text}');
              },
              child: Container(
                child: Text('Calcular'),
              ),
            ),
          ),
          SizedBox(
            height: 75,
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('K'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
