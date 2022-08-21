import 'package:flutter/material.dart';
import 'package:test_weather/pages/home/component/body_widget.dart';
import 'package:test_weather/utils/const_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstData.title),
      ),
      body: const BodyWidget(),
    );
  }
}
