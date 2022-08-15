import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var size = 50.0;
  var x = 50.0;
  var y = 50.0;

  @override
  void initState() {
    super.initState();
    Ticker ticker = Ticker((now) {
      setState(() {});
    });
    ticker.start();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    x += 1;
    print("teste");
    return Scaffold(
      body: Center(
        child: Transform.translate(
          offset: Offset(x, y),
          child: Container(
            width: size,
            height: size,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
