import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:minpro2_mobile/pages/welcome_page.dart';
import 'package:minpro2_mobile/pages/login_page.dart';
import 'package:minpro2_mobile/pages/home_page.dart';
import 'package:minpro2_mobile/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  runApp(const GlowUpApp());
}

const Color pinkDark = Color.fromARGB(255, 255, 17, 116);
const Color pinkSoft = Color(0xFFFFC1DD);

class GlowUpApp extends StatelessWidget {
  const GlowUpApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'GlowUp',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: pinkDark,
        foregroundColor: Colors.white,
      ),
    ),
    initialRoute: "/",
    routes: {
      "/": (context) => const WelcomePage(),
      "/login": (context) => const LoginPage(),
      "/register": (context) => const RegisterPage(),
      "/home": (context) => const HomePage(),
    },
  );
  }
}