import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Kita ambil warna tema utama dari main.dart
    final Color themeColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang'),
        backgroundColor: themeColor, // <-- Ganti jadi warna tema
        foregroundColor: Colors.white, // <-- Biar teksnya putih
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: themeColor, // <-- Ganti jadi warna tema
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.wallet, size: 50, color: Colors.white), // <-- Ikon diganti
            ),
            SizedBox(height: 32),

            // Username Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),

            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 24),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // <-- INI DIA EDITNYA: Pindah ke halaman '/home'
                  // Kita pakai pushReplacementNamed agar pengguna tidak bisa "back" ke login
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColor, // <-- Ganti jadi warna tema
                  foregroundColor: Colors.white, // <-- Teks tombol jadi putih
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                  ),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Register Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"), // <-- Ganti Bahasa
                TextButton(
                  onPressed: () {
                    // <-- INI DIA EDITNYA: Pindah ke halaman '/register'
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Daftar di sini', // <-- Ganti Bahasa
                    style: TextStyle(color: themeColor), // <-- Ganti warna link
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
