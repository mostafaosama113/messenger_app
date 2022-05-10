import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoading = false;

  void login({required String email, required String password}) {
    isLoading = true;
    notifyListeners();
    Future.delayed(
      const Duration(seconds: 3),
    ).then((value) {
      isLoading = false;
      notifyListeners();
    });
  }
}
