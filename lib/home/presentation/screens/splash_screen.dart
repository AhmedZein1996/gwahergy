import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gwahergy/home/presentation/blocs/splash/splash_cubit.dart';
import '../../../../core/managers/color_manager.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/route_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listenWhen: (previous, current) {
        return previous != current;
      },
      listener: (context, state) {
        if (state.splashEnded) {
          Navigator.of(context).pushReplacementNamed(Routes.home);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        backgroundColor: ColorManager.white,
        body: Center(
          child: SizedBox(
            child: Image.asset(
              ImageManager.logo,
              height: .20.sh,
            ),
          ),
        ),
      ),
    );
  }
}
