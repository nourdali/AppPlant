import 'package:app_plant/ui/root_page.dart';
import 'package:app_plant/ui/screens/home_page.dart';
import 'package:app_plant/ui/screens/signin_page.dart';
import 'package:app_plant/ui/screens/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ui/onboarding_screen.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Onboarding Screen',
      home: RootPage(), // RootPage()
      debugShowCheckedModeBanner: false,
    );
  }
}
