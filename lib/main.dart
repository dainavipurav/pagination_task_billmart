import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pagination_task/core/theme/theme.dart';
import 'package:pagination_task/firebase_options.dart';
import 'package:pagination_task/screens/user_list/user_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightThemeMode,
      home: UserListScreen(),
    );
  }
}
