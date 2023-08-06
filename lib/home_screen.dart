import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Lottery App",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Lottery winning number is 7"),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: x == 7 ? 500 : 250,
                decoration: BoxDecoration(
                    color:
                        x == 7 ? Colors.green.shade50 : Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: x == 7
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              const Icon(
                                Icons.done_outline,
                                color: Colors.green,
                                size: 50,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Hurrah! You win! Your lottery number is $x",
                                textAlign: TextAlign.center,
                              ),
                            ])
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                              const Icon(
                                Icons.warning_rounded,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Alas! You loss! Your lottery number is $x\nTry again",
                                textAlign: TextAlign.center,
                              ),
                            ]),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
          },
          backgroundColor: Colors.orange,
          child: const Icon(
            Icons.refresh_outlined,
          ),
        ),
      ),
    );
  }
}
