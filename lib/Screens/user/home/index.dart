import "package:flutter/material.dart";

class ManagerHomeScreen extends StatelessWidget {
  static const routeName = "/";

  const ManagerHomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
