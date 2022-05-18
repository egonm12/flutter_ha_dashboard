import 'package:state_notifier/state_notifier.dart';

import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';

class SignInScreenController extends StateNotifier<AsyncValue<String>> {
  SignInScreenController({
    required this.authenticationRepository,
  }) : super(const AsyncValue.initial());

  final AuthenticationRepository authenticationRepository;

  Future<void> signIn() async {
    state = const AsyncValue.loading();

    try {
      await authenticationRepository.authenticate();

      state = const AsyncValue.data('');
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
