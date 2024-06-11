import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/splash_screen/cubit/splash_screen_cubit.dart';
import 'package:todo_app/screens/splash_screen/cubit/splash_screen_state.dart';
import 'package:todo_app/services/navigation_service.dart';
import 'package:todo_app/widgets/loading_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final NavigationService _navigationService = NavigationService();
  SplashScreenCubit? _bloc;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashScreenCubit>(context);
    _bloc!.splashScreenLoaded();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: body(),
      ),
    );
  }

  Widget body() {
    return BlocConsumer<SplashScreenCubit, SplashScreenState>(
        builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Aplikasi To-do",
            style: GoogleFonts.oswald(color: Colors.white, fontSize: 30),
          ),
          const LoadingWidget(
            size: 40,
          ),
        ],
      );
    }, listener: (context, state) {
      if (state is SplashScreenError) {
        throw Exception(state.error);
      }

      if (state is SplashScreenLoaded) {
        _navigationService.navigateTo('/signin');
      }
    });
  }
}
