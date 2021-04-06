import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var resultado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu contador"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Você pressinou o botão',
            style: TextStyle(
              fontSize: 24,
            ),
          )),
          Center(
            child: Text(
              '$resultado',
              style: TextStyle(fontSize: 34),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Botão pressionado');
            setState(() {
              resultado += 1;
            });
          },
          child: Icon(Icons.add)),
    );
  }
}
