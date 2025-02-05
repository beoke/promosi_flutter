import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navbar Scroll App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();

  // Fungsi untuk melakukan scroll ke bagian tertentu
  void _scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promo App'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          _navItem("Home", 0),
          _navItem(
              "Aplikasi yang Kami Buat", 1000), // Scroll ke bagian Aplikasi
          _navItem("Tentang Kami", 2000), // Scroll ke bagian Tentang Kami
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController, // Menggunakan ScrollController
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _section(
                height: 1000,
                color: Colors.deepPurple.shade100,
                title: "Home",
                content: "Selamat datang di Promo App!",
                isHome: true),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat item navbar
  Widget _navItem(String title, double position) {
    return TextButton(
      onPressed: () => _scrollToSection(position),
      child: Text(title,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
    );
  }

  Widget _section({
    required double height,
    required Color color,
    required String title,
    required String content,
    bool isHome = false, // Tambahkan parameter untuk halaman Home
  }) {
    return Container(
      height: height,
      width: double.infinity,
      color: color,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(fontSize: 18),
          ),
          if (isHome) ...[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _homeBox("Fitur 1", Icons.star, Colors.deepPurple),
                _homeBox("Fitur 2", Icons.settings, Colors.purple),
                _homeBox("Fitur 3", Icons.info, Colors.pink),
                _homeBox("Fitur 4", Icons.lightbulb, Colors.orange),
              ],
            ),
          ],
        ],
      ),
    );
  }

// Widget untuk kotak fitur di Home
  Widget _homeBox(String title, IconData icon, Color color) {
    return Expanded(
      child: Container(
        height: 150,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 5, offset: Offset(2, 2))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
