import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);
  static const routeName = '/error';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Center(
        child: Text("Error"),
      ),
    ));
  }
}
