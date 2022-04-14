import 'package:calculadoras/pages/conversor.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          accentColor: Colors.black,
        ),
        home: pseudocodigo(),
        debugShowCheckedModeBanner: false,
      ),
    );

class pseudocodigo extends StatefulWidget {
  @override
  State<pseudocodigo> createState() => _pseudocodigoState();
}

class _pseudocodigoState extends State<pseudocodigo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          title: Text(
            'Calculadoras',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Conversor',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Tabuada',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  'Nomes',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            conversor(),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
