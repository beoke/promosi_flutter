import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Promo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header dengan gambar dan teks
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Selamat Datang di Aplikasi Kami',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Temukan solusi terbaik untuk kebutuhan Anda dengan aplikasi kami yang inovatif dan mudah digunakan.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/icon/school-bell.png', // Ganti dengan path gambar Anda
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Mulai Sekarang',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),

            // Fitur-fitur aplikasi
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Fitur Unggulan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: FeatureCard(
                          icon: Icons.speed,
                          title: 'Cepat dan Efisien',
                          description:
                              'Aplikasi kami dirancang untuk memberikan pengalaman pengguna yang cepat dan efisien.',
                        ),
                      ),
                      Expanded(
                        child: FeatureCard(
                          icon: Icons.security,
                          title: 'Aman dan Terpercaya',
                          description:
                              'Keamanan data Anda adalah prioritas kami. Aplikasi kami menggunakan teknologi enkripsi terbaru.',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: FeatureCard(
                          icon: Icons.phone_android,
                          title: 'Multi-Platform',
                          description:
                              'Aplikasi kami dapat digunakan di berbagai platform, termasuk Android dan iOS.',
                        ),
                      ),
                      Expanded(
                        child: FeatureCard(
                          icon: Icons.support_agent,
                          title: 'Dukungan 24/7',
                          description:
                              'Tim dukungan kami siap membantu Anda kapan saja, 24 jam sehari, 7 hari seminggu.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Testimoni
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              child: Column(
                children: [
                  const Text(
                    'Apa Kata Mereka?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TestimonialCard(
                    name: 'John Doe',
                    comment:
                        'Aplikasi ini sangat membantu saya dalam menyelesaikan pekerjaan sehari-hari. Sangat mudah digunakan!',
                  ),
                  const SizedBox(height: 20),
                  const TestimonialCard(
                    name: 'Jane Smith',
                    comment:
                        'Saya sangat puas dengan layanan yang diberikan. Tim dukungan sangat responsif dan membantu.',
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Coba Sekarang',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String comment;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.account_circle,
              size: 50,
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              comment,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}