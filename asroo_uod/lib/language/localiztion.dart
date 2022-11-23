import 'package:asroo_uod/language/ar.dart';
import 'package:asroo_uod/language/en.dart';
import 'package:asroo_uod/language/fr.dart';
import 'package:asroo_uod/utils/my_string.dart';
import 'package:get/route_manager.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
