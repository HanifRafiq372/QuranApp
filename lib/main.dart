import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:quoran/utils/routes.dart';
import 'package:quran_app/screen/onboarding.dart';
import 'package:quran_app/utils/routes.dart';
import 'package:quran_app/lib/firebase_option.dart'; // Sesuaikan dengan file Firebase options Anda

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: rLogin, // Mengatur rLogin sebagai rute awal
      onGenerateRoute: generateDynamicRoute,
    );
  }
}
