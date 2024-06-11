import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/screens/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:todo_app/screens/splash_screen/splash_screen.dart';
import 'package:todo_app/services/navigation_service.dart';
import 'package:todo_app/utils/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final NavigationService _navigationService = NavigationService();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigationService.navigatorKey,
      onGenerateRoute: generateRoute,
      home: BlocProvider(
        create: (context) => SplashScreenCubit(),
        child: const SplashScreen(),
      ),
    );
  }
}
