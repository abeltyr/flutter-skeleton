import "package:flutter/material.dart";

class UserIndexScreen extends StatelessWidget {
  static const routeName = "/user";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Logged in user"),
        ),
      ),
    );
  }
}
