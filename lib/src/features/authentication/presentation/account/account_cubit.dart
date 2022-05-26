import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show AsyncValue;

import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';

class AccountCubit extends Cubit<AsyncValue<void>> {
  AccountCubit({
    required this.authenticationRepository,
  }) : super(const AsyncValue.data(null));

  final AuthenticationRepository authenticationRepository;

  Future<void> signOut() async {
    emit(const AsyncValue.loading());

    emit(
      await AsyncValue.guard(
        () async => await authenticationRepository.revokeRefreshToken(),
      ),
    );
  }

  void resetState() => emit(const AsyncValue.data(null));
}
