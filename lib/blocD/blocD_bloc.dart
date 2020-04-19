import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocD_event.dart';
import 'blocD_state.dart';

class BlocD extends Bloc<BlocDEvent, BlocDState> {
  @override
  BlocDState get initialState => InitialState();

  Stream<BlocDState> mapEventToState(BlocDEvent event) async* {
    if (event is BlocDEvent1) {
      print('BlocDEvent1 received');
    }
    if (event is BlocDEvent2) {
      print('BlocDEvent2 received');
    }
  }
}
