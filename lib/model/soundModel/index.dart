import 'package:hive/hive.dart';

part 'index.g.dart';

@HiveType(typeId: 0)
class SoundModel {
  @HiveField(0)
  String title;

  @HiveField(1)
  String storage;

  @HiveField(2)
  String url;

  @HiveField(3)
  String status;

  @HiveField(4)
  double size;

  SoundModel({
    required this.title,
    required this.storage,
    required this.url,
    required this.status,
    required this.size,
  });
}
