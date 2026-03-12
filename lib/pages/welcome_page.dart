import 'package:flutter/material.dart';
import 'package:minpro2_mobile/main.dart';
import 'package:minpro2_mobile/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/images/Welcome.png",
              fit: BoxFit.cover,
            ),
          ),

          Container(
            color: pinkDark.withValues(alpha: 0.12),
          ),

          Center(
            child: Container(
              width: 430,
              height: 430,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 255, 255, 255).withValues(alpha: 0.55),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: pinkDark.withValues(alpha: 0.15),
                          blurRadius: 60,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.favorite_rounded,
                      size: 70,
                      color: pinkDark,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "GlowUp 💄",
                    style: TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: pinkDark,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Organize your beauty. Elevate your glow.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      fontFamily: "PlayfairDisplay",
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: pinkDark,
                      elevation: 12,
                      shadowColor: pinkDark.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Start ♡",
                      style: TextStyle(
                        fontFamily: "CloudLucent",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}