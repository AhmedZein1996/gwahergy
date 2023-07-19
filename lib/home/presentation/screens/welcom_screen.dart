import 'package:flutter/material.dart';
import 'package:gwahergy/home/presentation/widgets/welcome_background_widget.dart';

import '../../../core/managers/color_manager.dart';
import '../widgets/welcome_foreground_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.white,
      body: Stack(
        children: [
          WelcomeBackgroundWidget(),
          WelcomeForegroundWidget(),
        ],
      ),
    );
  }
}
