import 'package:flutter/material.dart';

import 'widget/appbar/appbar_widget.dart';

// ignore: public_member_api_docs
class HomePage extends StatefulWidget {
  // ignore: public_member_api_docs
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
    );
  }
}