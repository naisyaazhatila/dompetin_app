import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    // Durasi animasi meluncur naik dibuat 1.5 detik biar smooth dan elegan
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    // Diubah ke 4.0 agar posisi logo BENER-BENER sembunyi di luar bawah layar handphone
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 4.0), 
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack, // Efek memantul estetik di akhir
    ));

    // ===================================================================
    // TAHAP 1: Biarkan layar biru POLOS dulu selama 1.5 detik (Android Compact - 1)
    // ===================================================================
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (mounted) {
        _controller.forward(); // TAHAP 2: Setelah 1.5 detik, baru logo meluncur naik dari bawah
      }
    });

    // ===================================================================
    // TAHAP 3: Total nunggu 4.5 detik dari awal aplikasi dibuka, lalu pindah halaman
    // ===================================================================
    Future.delayed(const Duration(milliseconds: 4500), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E60F2), // Warna biru figma kamu
      body: Center(
        child: SlideTransition(
          position: _offsetAnimation,
          child: Image.asset(
            'assets/logo.png',
            width: 200, // Ukuran logo dompetin kamu
          ),
        ),
      ),
    );
  }
}