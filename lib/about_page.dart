import 'package:flutter/material.dart';
import 'package:login_page/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Color(0xFFBF9BA8),
      ),
      body: Container( // Menggunakan Container untuk warna latar belakang
        color: Color(0xFFDAD5D5), // Mengatur warna latar belakang
        child: Center(
          child: Text('Ini adalah Tugas 3 Praktikum Pemrograman Mobile'),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }

}
