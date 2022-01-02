import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.appTitle),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                var box = Hive.box('language');
                box.put('current', 'en');
              },
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text("change"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
