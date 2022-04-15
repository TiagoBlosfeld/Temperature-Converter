import 'dart:ui';
import 'package:flutter/material.dart';

class conversor extends StatefulWidget {
  @override
  State<conversor> createState() => _conversorState();
}

class _conversorState extends State<conversor> {
  TextEditingController graus = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    graus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Insira a temperatura em °C :',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 200,
              height: 40,
              child: TextField(
                controller: graus,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => graus.clear(),
                    icon: Icon(Icons.close),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 0, right: 0),
                  hintText: 'Exemplo: 30°C',
                  hintStyle: const TextStyle(
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
                  double grausint = double.parse(graus.text);
                  double kelvin = grausint + 273;
                  double reaumur = grausint * 0.8;
                  double rankine = (grausint * 1.8) + 32 + 459.67;
                  double fahren = (grausint * 1.8) + 32;

                  showDialog(
                    context: context,
                    builder: (context) {
                      String reaumur1 = reaumur.toStringAsFixed(2);
                      String rankine1 = rankine.toStringAsFixed(2);
                      String fahren1 = fahren.toStringAsFixed(2);

                      return AlertDialog(
                        insetPadding: EdgeInsets.all(10),
                        title: Text(
                          'As conversões de ${graus.text}°C são:',
                          style: TextStyle(fontSize: 18),
                        ),
                        content: Container(
                          width: 300,
                          height: 200,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                  'Kelvin : ${graus.text}°C é igual a $kelvin K'),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  'Réaumur : ${graus.text}°C é igual a $reaumur1 Re'),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  'Rankine : ${graus.text}°C é igual a $rankine1 Ra'),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  'Fahrenheit : ${graus.text}°C é igual a $fahren1 F'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  child: Text('Calcular'),
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
