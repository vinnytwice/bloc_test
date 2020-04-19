import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocB_event.dart';
import 'blocB_state.dart';

class BlocB extends Bloc<BlocBEvent, BlocBState> {
  @override
  BlocBState get initialState => InitialState();

  Stream<BlocBState> mapEventToState(BlocBEvent event) async* {
    if (event is BlocBEvent1) {
      print('BlocAEvent1 received');
    }
    if (event is BlocBEvent2) {
      print('BlocAEvent2 received');
    }
  }
}
