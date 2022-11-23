import 'package:asroo_uod/language/localiztion.dart';
import 'package:asroo_uod/logic/controllers/theme_controller.dart';
import 'package:asroo_uod/routes/routes.dart';
import 'package:asroo_uod/utils/my_string.dart';
import 'package:asroo_uod/utils/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


Future<void> main() async {
  bool shouldUseFirebaseEmulator = false;
//انتظر خدمات الفاير بيس قبل تعمل رن

  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  //استدعي خدمات الفاير بس ولما تجي سو الرن
  if (!kIsWeb) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
        appId: '1:448618578101:web:0b650370bb29e29cac3efc',
        messagingSenderId: '448618578101',
        projectId: 'react-native-firebase-testing',
        authDomain: 'react-native-firebase-testing.firebaseapp.com',
        databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
        storageBucket: 'react-native-firebase-testing.appspot.com',
        measurementId: 'G-F79DJ0VFGS',
      ),
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Asroo Shop',
      debugShowCheckedModeBanner: false,
      locale: Locale(GetStorage().read<String>('lang').toString()),
      translations: LocaliztionApp(),
      fallbackLocale: Locale(ene),
      // fallbackLocale -> اذا صارت اي مشكله في ملفات اللغه وماتعرف عليها نسويه عشان يفتح اللغهخ الانجليزي كاساسي

      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      initialRoute: FirebaseAuth.instance.currentUser != null ||
              GetStorage().read<bool>('auth') == true
          ? AppRoutes.mainSreen
          : AppRoutes.welcome,
      //initialRoute اول صفحه تفتح معنا
      getPages: AppRoutes.routes,
    );
  }
}
