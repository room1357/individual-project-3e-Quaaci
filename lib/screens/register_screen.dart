import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Kita ambil warna tema utama dari main.dart
    final Color themeColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Akun Baru'), // <-- Ganti Bahasa
        backgroundColor: themeColor, // <-- Ganti jadi warna tema
        foregroundColor: Colors.white, // <-- Biar teksnya putih
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        // Kita pakai SingleChildScrollView agar layarnya bisa di-scroll
        // kalau keyboard-nya muncul
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 32), // <-- Kasih jarak dari atas
              // Logo
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: themeColor, // <-- Ganti jadi warna tema
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person_add, size: 50, color: Colors.white),
              ),
              SizedBox(height: 32),

              // Full Name Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap', // <-- Ganti Bahasa
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 16),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16),

              // Username Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                  ),
                  prefixIcon: Icon(Icons.account_circle),
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
              SizedBox(height: 16),

              // Confirm Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Konfirmasi Password', // <-- Ganti Bahasa
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Biar lebih modern
                  ),
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(height: 24),

              // Register Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // <-- INI DIA EDITNYA: Pindah ke halaman '/home'
                    // Anggap saja registernya berhasil, langsung lempar ke home
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
                    'DAFTAR', // <-- Ganti Bahasa
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sudah punya akun?"), // <-- Ganti Bahasa
                  TextButton(
                    onPressed: () {
                      // <-- INI DIA EDITNYA: Kembali ke halaman sebelumnya (Login)
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: themeColor), // <-- Ganti warna link
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
