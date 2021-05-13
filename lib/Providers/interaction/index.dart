import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class InteractionProvider with ChangeNotifier {
  bool _isLoading = false;
  bool _isError = false;


  bool get isLoading {
    return _isLoading;
  }
  
  bool get isError {
    return _isError;
  }

  void loading({bool loadingData}) {
    _isLoading = loadingData;
    notifyListeners();
  }

  void error({bool errorData}) {
    _isError = errorData;
    notifyListeners();
  }

}
