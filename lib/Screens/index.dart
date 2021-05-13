import 'package:provider/provider.dart';
import 'package:skeleton/Providers/user/index.dart';
import "package:flutter/material.dart";
import 'package:skeleton/Screens/guest/index.dart';
import 'package:skeleton/Screens/shared/error/index.dart';
import 'package:skeleton/Screens/shared/loading/index.dart';
import 'package:skeleton/Screens/user/index.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<UserProvider>(context, listen: false).fetchUser(),
      builder: (ctx, dataSnapShot) {
        if (dataSnapShot.connectionState == ConnectionState.waiting)
          return LoadingScreen();
        else if (dataSnapShot.hasError || dataSnapShot.error != null)
          return ErrorScreen();
        if (dataSnapShot.data != null)
          return UserIndexScreen();
        else
          return GuestIndexScreen();
      },
    );
  }
}
