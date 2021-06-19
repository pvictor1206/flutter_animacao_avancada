import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this,
            duration: Duration(seconds: 2)
    );

    animation = Tween<double>(begin: 0, end: 300).animate(controller!);
    animation!.addListener(() {
      setState(() {

      });
    });

    controller!.forward();

  }


  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: animation!.value,
        width: animation!.value,
        child: FlutterLogo(),
      ),
    );
  }
}

