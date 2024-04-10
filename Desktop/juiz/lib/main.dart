import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage>createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counterRed = 0;
  int _counterYellow = 0;

  void yellowCardIncrement() {
    setState(() {
      _counterYellow++;
    });
  }

  void yellowCardDescrement() {
    setState(() {
      if(_counterYellow > 0)
        _counterYellow--;
    });
  }

  void redCardIncrement() {
    setState(() {
      _counterRed++;
    });
  }

  void redCardDecrement() {
    setState(() {
      if(_counterRed > 0)
        _counterRed--;
    });
  }

  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('android/assets/images/cenario-cinematografico-estadio-de-futebol-desportivo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'CARTÕES APLICADOS',
              style: TextStyle(
                fontSize: 80,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 250,
                  height: 300,
                  color: Colors.yellowAccent,
                  child: Center(
                    child: Text(
                      '$_counterYellow',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 300,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      '$_counterRed',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    onPressed: yellowCardIncrement,
                    tooltip: 'yellowCardIncrement',
                    child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: yellowCardDescrement,
                  tooltip: 'yellowCardDecrement',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: redCardDecrement,
                  tooltip: 'redCardDecrement',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: redCardIncrement,
                  tooltip: 'redCardIncrement',
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        )
      ),
    );
  }
}

