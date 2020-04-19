import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocA_event.dart';
import 'blocA_state.dart';

class BlocA extends Bloc<BlocAEvent, BlocAState> {
  @override
  BlocAState get initialState => InitialState();

  Stream<BlocAState> mapEventToState(BlocAEvent event) async* {
    if (event is BlocAEvent1) {
      print('BlocAEvent1 received');
      yield BlocAState1();
    }
    if (event is BlocAEvent2) {
      print('BlocAEvent2 received');
    }
  }
}
