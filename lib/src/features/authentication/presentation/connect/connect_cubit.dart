import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show AsyncValue;

import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_screen.dart';

typedef ConnectState = AsyncValue<void>;

/// Responsible for all logic within [ConnectScreen].
class ConnectCubit extends Cubit<ConnectState> {
  ConnectCubit({
    required this.authenticationRepository,
  }) : super(_initialState);

  final AuthenticationRepository authenticationRepository;

  static const _initialState = ConnectState.data(null);

  /// Opens the in-app browser to authenticate the user.
  ///
  /// Emits:
  /// - [AsyncValue.loading] when the request is in progress.
  /// - [AsyncValue.data] when the request returned with data.
  /// - [AsyncValue.error] when the request returned with an error.
  Future<void> signIn(String homeAssistantUrl) async {
    emit(const ConnectState.loading());

    emit(
      await ConnectState.guard(
        () async => await authenticationRepository.authenticate(
          homeAssistantUrl,
        ),
      ),
    );
  }

  /// Resets the state. Emits [_initialState].
  void resetState() => emit(_initialState);
}
