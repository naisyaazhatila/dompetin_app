import 'package:flutter/material.dart';
import 'ui/splash_screen.dart'; // <--- Ini memanggil file splash screen kamu

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan tulisan 'DEBUG' merah di pojok kanan atas
      title: 'Dompetin App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(), // Menjadikan Splash Screen sebagai tampilan awal aplikasi
    );
  }
}