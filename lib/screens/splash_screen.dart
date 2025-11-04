import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {//stateful karena ada proses waktu tunggu 
  static const routeName = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {//dipanggil saat halaman baru dibuka 
    super.initState();

    // Tunggu 3 detik, lalu pindah halaman
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
            builder: (_) =>
                const HomeScreen()), // ganti ke halaman homescreen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            Image.asset(
              'assets/images/splash.png',
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              errorBuilder: (context, error, stackTrace) {
                return Text('Error loading image: $error');
              },
            ),
            const Text(
              "QuizKu",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF506DB8)),
            ),
          ],
        ),
      ),
    );
  }
}
