import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:krar/model/soundModel/index.dart';

import 'views/app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SoundModelAdapter());
  await Hive.openBox<SoundModel>('sound');
  await Hive.openBox('recording');
  await Hive.openBox('language');

  runApp(
    const MyApp(),
  );
}
