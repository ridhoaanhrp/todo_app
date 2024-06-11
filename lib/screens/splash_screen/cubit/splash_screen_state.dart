import 'package:equatable/equatable.dart';

abstract class SplashScreenState extends Equatable {
  const SplashScreenState();

  @override
  List<Object?> get props => [];
}

class SplashScreenInitial extends SplashScreenState {}

class SplashScreenLoading extends SplashScreenState {}

class SplashScreenLoaded extends SplashScreenState {
  final dynamic response;
  const SplashScreenLoaded({this.response});
}

class SplashScreenError extends SplashScreenState {
  final String? error;

  const SplashScreenError({this.error});
}
