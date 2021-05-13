import 'dart:io';

class NetworkUrl {
  Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup("google.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) return true;
    } catch (e) {}
    return false;
  }

  static const String BackendUrl = "your backend api url";
  static const String PureBackendUrl = "your backend api url";

  static const String PublicUrl = "https://zider.media";

  // static const String BackendUrl = "https://api.dev.ethiomusika.com";
  // static const String PureBackendUrl = "api.dev.ethiomusika.com";

}
