import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DCCxGDSC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'DCC_PROJECT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 60,
          ),
          Container(
            width: 300,
            height: 26,
            child: Text("Login Account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: 300,
            height: 10,
          ),
          Container(
            width: 300,
            height: 26,
            child: Text("Thanks ! for choosing your account.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ),
          Container(
            width: 400,
            height: 100,
            child: Row(
              children: [
                Container(width: 20),
                Container(width: 20),
                Container(width: 20),
                ElevatedButton(
                  onPressed: () {
                    child:
                    Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                          ),
                        ));
                  },
                  child: Text("Phone Number"),
                ),
                Container(width: 20),
                Container(width: 20),
                Container(width: 20),
                ElevatedButton(
                  onPressed: () {
                    print("email section.");
                  },
                  child: Text("Email"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}