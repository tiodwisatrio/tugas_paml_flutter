import 'package:flutter/material.dart';
import 'login_page.dart'; // Ganti dengan lokasi file login_page Anda

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  LoginPage()), // Halaman tujuan
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "logo",
          child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/logo_spotify.png'),
          ),
        ),
      ),
    );
  }
}
