import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void increaseCounter() {
    if (counter < 20) {
      setState(() {
        counter++;
      });
    }
  }

  void decreaseCounter() {
    if (counter > -10) {
      setState(() {
        counter--;
      });
    }
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text("Counter Value", style: TextStyle(fontSize: 24)),

            const SizedBox(height: 20),

            Text(
              counter == 0 ? "Zero" : "$counter",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: (counter == 20
                    ? Colors.blue
                    : (counter >= 0 ? Colors.green : Colors.red)),
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(
                  onPressed: decreaseCounter,

                  child: const Text("-"),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: increaseCounter,

                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: resetCounter,

                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
