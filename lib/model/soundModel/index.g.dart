// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SoundModelAdapter extends TypeAdapter<SoundModel> {
  @override
  final int typeId = 0;

  @override
  SoundModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SoundModel(
      title: fields[0] as String,
      storage: fields[1] as String,
      url: fields[2] as String,
      status: fields[3] as String,
      size: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, SoundModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.storage)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SoundModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
