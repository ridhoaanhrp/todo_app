import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.threeArchedCircle(
        color: Colors.white, size: size);
  }
}
