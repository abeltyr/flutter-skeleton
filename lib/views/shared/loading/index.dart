import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krar/utils/theme.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  static const routeName = '/loading';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: PlatformTheme.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: 125,
        height: 125,
        child: Lottie.asset(
          'assets/animations/loading.json',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
