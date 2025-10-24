import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // --- EDIT 1: KOSMETIK ---
      title: 'Catatan Uangku', // Judul aplikasimu
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, // Ganti jadi warna favoritmu
        ),
        useMaterial3: true, // Ini bagus untuk tampilan lebih modern
      ),

      // --- EDIT 2: FUNGSIONAL / NAVIGASI ---
      // Kita hapus 'home: ...' dan ganti dengan ini:

      // Halaman mana yang akan muncul pertama kali?
      initialRoute: '/login', // Kita mulai dari halaman login

      // Daftar semua "rute" atau halaman yang ada di aplikasimu
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}