import 'package:flutter_bloc/flutter_bloc.dart';

class FirstStepCubit extends Cubit<Map<String, dynamic>>{
  FirstStepCubit(Map<String, dynamic> state) : super(state);

  saveData({Map<String, dynamic>data}) {emit(data);}
  addData({Map<String, dynamic>data}) {
    Map<String, dynamic> calc = {...state,...data};
    emit(calc);
  }

}