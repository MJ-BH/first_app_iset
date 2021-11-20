import 'package:first_app_iset/componnets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("data")), body: const HomePageView());
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var comp = Componnets();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          comp.myAvatar(150, 'images/6-min-min.jpg'),
          comp.myContainer(
              comp.myBoxDecoration(10, Colors.amber, 6, Colors.cyan),
              300,
              50,
              4,
              "First",
              comp.myStyle),
          comp.myContainer(
              comp.myBoxDecoration(8, Colors.black54, 6, Colors.white),
              200,
              80,
              4,
              "First",
              comp.myStyle2),
          comp.myButton("next",
              comp.buttonStyle(Colors.white38, Colors.black26, comp.myStyle2)),
        ],
      ),
    );
  }
}
