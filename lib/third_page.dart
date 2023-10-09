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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
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
          Container(
            width:100,
            height:200 ,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://th.bing.com/th?id=OIP.GQ8qBFEuBz6vHZyct5DmKQHaGc&w=268&h=233&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),

                ),
                Image(image: NetworkImage('https://th.bing.com/th/id/OIP.hTJgPRV5-1M1q73EbtArTwHaGu?w=209&h=190&c=7&r=0&o=5&dpr=1.5&pid=1.7'))

              ],
            ),
          ),
        ],
      ),
    );
  }
}