import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Common widget to handle [AsyncValue]
class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    Key? key,
    required this.value,
    required this.data,
    this.error,
    this.onRetry,
  })  : assert(
          error != null ? onRetry == null : true,
          'Can\'t provide both an error and an onRetry callback',
        ),
        super(key: key);

  /// Input async value
  final AsyncValue<T> value;

  /// Data builder function
  final Widget Function(T) data;

  /// Optional error builder function
  final Widget Function(Object?, StackTrace?)? error;

  /// Callback to trigger when in error state
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => const Center(child: CircularProgressIndicator()),
      error: error ??
          (e, _) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      e.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.red),
                    ),
                    if (onRetry != null)
                      ElevatedButton(
                        onPressed: onRetry!,
                        child: const Text('Retry'),
                      ),
                  ],
                ),
              ),
    );
  }
}
