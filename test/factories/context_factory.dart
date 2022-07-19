import 'package:flutter_ha_dashboard/src/core/domain/context/context.dart';
import 'factory.dart';

class ContextFactory extends Factory<Context> {
  @override
  Context generateFake([String? id]) => Context(
        id: id ?? Factory.createFakeUuid(),
      );

  @override
  List<Context> generateFakeList({required int length}) => List.generate(
        length,
        (index) => generateFake(
          index.toString(),
        ),
      );
}
