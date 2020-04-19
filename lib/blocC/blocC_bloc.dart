import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocC_event.dart';
import 'blocC_state.dart';

class BlocC extends Bloc<BlocCEvent, BlocCState> {
  @override
  BlocCState get initialState => InitialState();

  Stream<BlocCState> mapEventToState(BlocCEvent event) async* {
    if (event is BlocCEvent1) {
      print('BlocCEvent1 received');
    }
    if (event is BlocCEvent2) {
      print('BlocCEvent2 received');
    }
  }
}
