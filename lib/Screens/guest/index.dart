import "package:flutter/material.dart";

class GuestIndexScreen extends StatelessWidget {
  static const routeName = "/guest";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Text("Guest"),
        ),
      ),
    );
  }
}
