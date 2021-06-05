import 'package:flutter_bloc/flutter_bloc.dart';

class FirstStepCubit extends Cubit<Map<String, dynamic>>{
  FirstStepCubit(Map<String, dynamic> state) : super(state);

  saveData({required Map<String, dynamic>data}) {emit(data);}
  addData({required Map<String, dynamic>data}) {
    Map<String, dynamic> calc = {...state,...data};
    emit(calc);
  }

}