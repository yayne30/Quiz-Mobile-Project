import 'package:flutter/material.dart';
import 'package:quiz/Admin/admin_login.dart';
import 'package:quiz/pages/home.dart';
// import 'package:quiz/Admin/admin_login.dart';
import 'package:quiz/pages/home.dart';
// import 'package:quiz/pages/question.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:quiz_project/Admin/admin_login.dart';

void main() async {
 
 WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    runApp(const MyApp());
  } catch (e) {
    print('Error initializing Firebase: $e');
    rethrow;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
