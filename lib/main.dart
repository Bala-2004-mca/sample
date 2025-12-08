import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pylearn/firebase_options.dart';
import 'package:pylearn/screens/auth_gate.dart';
import 'package:pylearn/providers/course_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => CourseProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PyLearn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF63D3FF), // Light Blue from reference
          secondary: const Color(0xFFB2EBF2), // Lighter Cyan for gradients
          surface: const Color(0xFFE0F7FA), // Very light cyan for backgrounds
        ),
        scaffoldBackgroundColor: const Color(0xFFE0F7FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF63D3FF),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          color: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const AuthGate(),
      debugShowCheckedModeBanner: false,
    );
  }
}
