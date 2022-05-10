import 'package:bloc/bloc.dart';

class AnimateCubit extends Cubit<bool> {
  AnimateCubit(bool initialState) : super(false);
  animate({required animate}){
    emit(animate);
  }
}
