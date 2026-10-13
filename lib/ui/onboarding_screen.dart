import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih sesuai Figma
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 1. Bagian Atas: Logo Kecil & Nama Aplikasi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', width: 30), // Logo kecil
                  const SizedBox(width: 8),
                  const Text(
                    'Dompetin',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E60F2), // Warna biru figma
                    ),
                  ),
                ],
              ),

              // 2. Bagian Tengah: Gambar Ilustrasi Orang
              Image.asset(
                'assets/onboarding1.png',
                width: 280, 
                errorBuilder: (context, error, stackTrace) {
                  // Pengaman jika gambar onboarding1.png belum ada di folder assets kamu
                  return const Icon(Icons.image, size: 100, color: Colors.grey);
                },
              ),

              // 3. Bagian Teks Judul dan Subjudul
              Column(
                children: [
                  const Text(
                    'Pengeluaran nggak terkendali?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Tanpa sadar, uang habis untuk hal-hal yang nggak penting.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),

              // 4. Bagian Bawah: Tombol Lewati, Indikator, dan Next
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // DI SINI SUDAH DI-FIX LENGKAP
                children: [
                  // Tombol Lewati
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lewati',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),

                  // Indikator Titik-Titik (3 Titik)
                  Row(
                    children: [
                      Container(
                        width: 18, // Titik pertama agak panjang sesuai figma
                        height: 6,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E60F2),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),

                  // Tombol Next (Biru)
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E60F2),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 16),
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