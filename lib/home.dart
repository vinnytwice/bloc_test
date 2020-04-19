import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocB/blocB_bloc.dart';
import 'blocB/blocB_event.dart';
import 'blocC/blocC_bloc.dart';
import 'blocC/blocC_event.dart';
import 'blocD/blocD_bloc.dart';
import 'blocD/blocD_event.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
