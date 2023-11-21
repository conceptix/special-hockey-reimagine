import 'package:collection/collection.dart';

enum Handedness {
  Left,
  Right,
}

enum TeamDivisions {
  A,
  B,
  C,
}

enum Roles {
  admin,
  clubManager,
  coach,
  player,
  volunteer,
  supporter,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Handedness):
      return Handedness.values.deserialize(value) as T?;
    case (TeamDivisions):
      return TeamDivisions.values.deserialize(value) as T?;
    case (Roles):
      return Roles.values.deserialize(value) as T?;
    default:
      return null;
  }
}
