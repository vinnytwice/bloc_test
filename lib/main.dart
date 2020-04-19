import 'package:bloc_test/blocA/blocA_event.dart';
import 'package:bloc_test/blocB/blocB_event.dart';
import 'package:bloc_test/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocA/blocA_bloc.dart';
import 'blocA/blocA_state.dart';
import 'blocB/blocB_bloc.dart';
import 'blocC/blocC_bloc.dart';
import 'blocC/blocC_event.dart';
import 'blocD/blocD_bloc.dart';
import 'blocD/blocD_event.dart';
import 'home.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<BlocA>(
        create: (context) => BlocA()..add(BlocAEvent1()),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<BlocA, BlocAState>(
        builder: (context, state) {
          if (state is BlocAState1) {
            print('BlocAState1 received');
            return MultiBlocProvider(
              providers: [
                BlocProvider<BlocB>(
                    create: (context) =>
                        BlocB()..add(BlocBEvent1())..add(BlocBEvent2())),
                BlocProvider<BlocC>(
                    create: (context) =>
                        BlocC()..add(BlocCEvent1())..add(BlocCEvent2())),
                BlocProvider<BlocD>(
                    create: (context) =>
                        BlocD()..add(BlocDEvent1())..add(BlocDEvent2())),
              ],
              child: Home(),
            );
          }
          return Home();
        },
      ),
    );
  }
}
