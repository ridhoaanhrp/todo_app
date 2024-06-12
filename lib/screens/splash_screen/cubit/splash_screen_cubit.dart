import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/screens/splash_screen/cubit/splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenInitial());

  splashScreenLoaded() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(const SplashScreenLoaded());
    } catch (e) {
      emit(SplashScreenError(error: e.toString()));
    }
  }
}
