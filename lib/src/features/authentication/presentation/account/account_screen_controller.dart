import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:state_notifier/state_notifier.dart';

class AccountScreenController extends StateNotifier<AsyncValue<void>> {
  AccountScreenController({
    required this.authenticationRepository,
  }) : super(const AsyncValue.initial());

  final AuthenticationRepository authenticationRepository;

  Future<void> signOut() async {
    state = const AsyncValue.loading();

    try {
      await authenticationRepository.revokeRefreshToken();

      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
