import 'package:riverpod/riverpod.dart';

extension Helper<T extends StateNotifier<U>, U extends Object?>
    on T Function(Ref<U>) {
  StateNotifierProvider<T, U> get provider => StateNotifierProvider<T, U>(this);
}
