import 'package:url_launcher/url_launcher.dart';

class OpenRepository{
  Future<void> openUrl({required String link}) async {
    final Uri _url = Uri.parse(
        link);
    if (!await launchUrl(_url)) {
      throw Exception('Não foi possivel encontrar esse link $_url');
    }
  }
}