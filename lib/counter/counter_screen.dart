import 'package:counter/componets/button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var resultado = 0;

  /*
   * Incrementa 1 a quantidade
   */
  void add() {
    setState(() {
      resultado += 1;
    });
  }

  /*
 * Decrementa 1 no resultado
 */
  void remove() {
    setState(() {
      if (resultado == 0) return;
      resultado -= 1;
    });
  }

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
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: ButtonDefault(
                Icon(
                  Icons.add,
                ),
                () {
                  add();
                },
              ),
            ),
            ButtonDefault(
              Icon(
                Icons.remove,
              ),
              () {
                remove();
              },
            ),
          ],
        ));
  }
}
