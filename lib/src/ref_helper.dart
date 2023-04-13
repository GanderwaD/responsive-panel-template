import 'package:flutter_riverpod/flutter_riverpod.dart';

///Singleton [R]
class R {
  R._internal();
  static final R _instance = R._internal();
  static R get instance => _instance;
  late WidgetRef ref;
  int memberId = 0;

  void initializeRef(WidgetRef ref) {
    this.ref = ref;
  }
}
