import 'package:faker/faker.dart';
import 'package:uuid/uuid.dart';

abstract class Factory<T> {
  Faker get faker => Faker();

  /// Creates a fake uuid.
  static String createFakeUuid() => const Uuid().v4();

  /// Generate a single fake model.
  T generateFake();

  /// Generate fake list based on provided length.
  List<T> generateFakeList({required int length});
}
