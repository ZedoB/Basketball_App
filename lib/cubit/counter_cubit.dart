import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterIncrement>{
  CounterCubit() : super(IncrementAState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamInc({required String team, required int buttonNum}){
    if(team == 'A'){
      teamAPoints += buttonNum;
      emit(IncrementAState());
    }
    else{
      teamBPoints += buttonNum;
      emit(IncrementBState());
    }
  }
}