import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import '../../../../mocks/mocks.dart';

void main() {
  group(ConnectCubit, () {
    late final MockAuthenticationRepository authenticationRepository;
    late final ConnectState initialState;

    ConnectCubit createConnectCubit() => ConnectCubit(
          authenticationRepository: authenticationRepository,
        );

    setUpAll(() {
      authenticationRepository = MockAuthenticationRepository();

      initialState = createConnectCubit().state;
    });

    test('returns the correct initial state', () {
      expect(
        initialState,
        const ConnectState.data(null),
      );
    });

    group('signIn', () {
      blocTest<ConnectCubit, ConnectState>(
        'Given the user is signing in'
        'When the request to authenticate returns with a success response'
        'Then it emits [ConnectState.loading(), ConnectState.data(null)]',
        setUp: () =>
            when(() => authenticationRepository.authenticate()).thenAnswer(
          (_) => Future.value(),
        ),
        build: createConnectCubit,
        act: (connectCubit) async => await connectCubit.signIn(),
        expect: () => const [
          ConnectState.loading(),
          ConnectState.data(null),
        ],
        verify: (_) => verify(authenticationRepository.authenticate).called(1),
      );

      blocTest<ConnectCubit, ConnectState>(
        'Given the user is signing in'
        'When the request to authenticate returns with an error response'
        'Then it emits [ConnectState.loading(), ConnectState.error(error)]',
        setUp: () =>
            when(() => authenticationRepository.authenticate()).thenThrow(
          'Something went wrong',
        ),
        build: createConnectCubit,
        act: (connectCubit) async => connectCubit.signIn(),
        expect: () => [
          const ConnectState.loading(),
          predicate<AsyncValue<void>>((value) {
            expect(value, isA<AsyncError<void>>());
            return true;
          }),
        ],
        verify: (connectCubit) {
          verify(authenticationRepository.authenticate).called(1);
        },
      );
    });
  });
}
