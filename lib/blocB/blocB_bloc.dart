import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocB_event.dart';
import 'blocB_state.dart';

class BlocB extends Bloc<BlocBEvent, BlocBState> {
  @override
  BlocBState get initialState => InitialState();

  Stream<BlocBState> mapEventToState(BlocBEvent event) async* {
    if (event is BlocBEvent1) {
      print('BlocBEvent1 received');
      yield BlocBState1();
    }
    if (event is BlocBEvent2) {
      print('BlocBEvent2 received');
    }
  }
}
