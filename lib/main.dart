import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/dashboard_screen.dart';

void main() => runApp(const JustduitApp());

class JustduitApp extends StatelessWidget {
  const JustduitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger',
      theme: ThemeData(
        useMaterial3: true,

        // 🌤 Warna latar belakang lembut seperti Messenger
        scaffoldBackgroundColor: const Color(0xFFF5F6F8),

        // 🎨 Warna utama biru khas Messenger
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0084FF),
          primary: const Color(0xFF0084FF),
          secondary: const Color(0xFF006BDA),
          brightness: Brightness.light,
        ),

        // 🧭 Tampilan AppBar seperti header Messenger (putih bersih, tanpa shadow)
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: IconThemeData(color: Colors.black87),
        ),

        // ✏️ Input field dengan gaya bulat khas Messenger
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0xFF0084FF)),
          ),
          hintStyle: const TextStyle(color: Colors.grey),
        ),

        // 🔘 Tombol utama Messenger-style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0084FF),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // 🔗 Text button seperti link “Forgot password?”
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF0084FF),
            textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        // 🧍 Font gaya modern dan nyaman dibaca
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black87,
            fontSize: 14,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),

      // 🔁 Alur route tetap sama
      initialRoute: LoginScreen.route,
      routes: {
        '/': (_) => const LoginScreen(),
        LoginScreen.route: (_) => const LoginScreen(),
        SignupScreen.route: (_) => const SignupScreen(),
        DashboardScreen.route: (_) => const DashboardScreen(),
      },
    );
  }
}
