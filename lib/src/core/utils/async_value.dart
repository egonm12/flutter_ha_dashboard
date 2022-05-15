import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_value.freezed.dart';

@freezed
class AsyncValue<T> with _$AsyncValue<T> {
  const factory AsyncValue.initial() = AsyncInitial<T>;
  const factory AsyncValue.data(T value) = AsyncData<T>;
  const factory AsyncValue.loading() = AsyncLoading<T>;
  const factory AsyncValue.error(Object error, {StackTrace? stackTrace}) =
      AsyncError<T>;
}
