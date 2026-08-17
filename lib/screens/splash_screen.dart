import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;

  @override
  void initState() {
    super.initState();

    // ============================================================
    // ANIMATION CONTROLLER
    // ============================================================
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // ============================================================
    // FADE ANIMATION
    // ============================================================
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Menjalankan animasi
    _controller.forward();

    // ============================================================
    // PINDAH KE HOME SCREEN
    // ============================================================
    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          // ========================================================
          // BACKGROUND IMAGE
          // ========================================================
          Image.asset(
            'assets/images/finance_background.jpg',
            fit: BoxFit.cover,
          ),

          // ========================================================
          // DARK OVERLAY
          // ========================================================
          Container(color: Colors.black.withValues(alpha: 0.3)),

          // ========================================================
          // APP TITLE
          // ========================================================
          Center(
            child: FadeTransition(
              opacity: _fade,
              child: const Text(
                'Finance Mate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      color: Colors.black54,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
