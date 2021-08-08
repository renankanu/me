import 'package:get/get.dart';
import 'package:me/generated/locales.g.dart';

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {'pt': Locales.pt_BR, 'en': Locales.en_US};
}
