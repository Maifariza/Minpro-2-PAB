import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:minpro2_mobile/main.dart';

final supabase = Supabase.instance.client;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final emailC = TextEditingController();
  final passC = TextEditingController();
  final confirmC = TextEditingController();

  bool hidePass = true;
  bool hideConfirm = true;

  String? emailError;
  String? passError;
  String? confirmError;

  void register() async {
    setState(() {
      emailError = null;
      passError = null;
      confirmError = null;
    });

    bool valid = true;

    final email = emailC.text.trim();
    final password = passC.text.trim();
    final confirm = confirmC.text.trim();
    final gmailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$');

    if (!gmailRegex.hasMatch(email)) {
      setState(() {
        emailError = "Email harus menggunakan @gmail.com";
      });
      valid = false;
    }

    if (password.length < 8) {
      setState(() {
        passError = "Password minimal 8 karakter";
      });
      valid = false;
    }

    if (password != confirm) {
      setState(() {
        confirmError = "Password tidak sama";
      });
      valid = false;
    }

    if (!valid) return;
    try {
    await supabase.auth.signUp(
      email: email,
      password: password,
    );

    if (!mounted) return;

    showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        child: Container(
          width: 320,
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: pinkDark.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check_circle_rounded,
                size: 55,
                color: pinkDark,
              ),
              const SizedBox(height: 14),
              const Text(
                "Register Berhasil ✨",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "PlayfairDisplay",
                  fontWeight: FontWeight.bold,
                  color: pinkDark,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Akun GlowUp kamu sudah dibuat ₊ ⊹.\nLogin sekarang\nuntuk mulai mengatur koleksi beauty mu 💄",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "CloudLucent",
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: pinkDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 6,
                  ),
                  child: const Text(
                    "Login Sekarang",
                    style: TextStyle(
                      fontFamily: "CloudLucent",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

    } on AuthException catch (e) {
    if (e.message.contains("User already registered")) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email sudah terdaftar. Silakan login saja ✨"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Register gagal. Coba lagi."),
        ),
      );
    }
  }
  }

  InputDecoration inputStyle(String label) {
    return const InputDecoration(
      labelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        color: pinkDark,
        fontFamily: "CloudLucent"
        ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFBFA5AE),
          width: 1.5,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: pinkDark,
          width: 2.5,
        ),
      ),
    ).copyWith(labelText: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [pinkSoft, Color(0xFFFFE3EC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/flowers.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            color: Colors.white.withOpacity(0.6),
          ),

          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Register GlowUp",
                    style: TextStyle(
                      fontFamily: "PlayfairDisplay",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: pinkDark,
                    ),
                  ),

                  const SizedBox(height: 25),
                  TextFormField(
                    controller: emailC,
                    style: const TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 20,
                    ),
                    decoration: inputStyle("Email").copyWith(
                      errorText: emailError,
                    ),
                  ),

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passC,
                    obscureText: hidePass,
                    style: const TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 20,
                    ),
                    onChanged: (value) {
                      if (value.length >= 8) {
                        setState(() {
                          passError = null;
                        });
                      }
                    },
                    decoration: inputStyle("Password").copyWith(
                      errorText: passError,
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePass ? Icons.visibility_off : Icons.visibility,
                          color: pinkDark,
                        ),
                        onPressed: () {
                          setState(() {
                            hidePass = !hidePass;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  TextFormField(
                    controller: confirmC,
                    obscureText: hideConfirm,
                    style: const TextStyle(
                      fontFamily: "CloudLucent",
                      fontSize: 20,
                    ),
                    onChanged: (value) {
                      if (value == passC.text) {
                        setState(() {
                          confirmError = null;
                        });
                      }
                    },
                    decoration: inputStyle("Confirm Password").copyWith(
                      errorText: confirmError,
                      suffixIcon: IconButton(
                        icon: Icon(
                          hideConfirm ? Icons.visibility_off : Icons.visibility,
                          color: pinkDark,
                        ),
                        onPressed: () {
                          setState(() {
                            hideConfirm = !hideConfirm;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: register,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 241, 207, 223),
                        elevation: 12,
                        shadowColor: pinkDark.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),

                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: pinkDark,
                          fontFamily: "CloudLucent",
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Sudah punya akun? Login",
                      style: TextStyle(
                        color: pinkDark,
                        fontFamily: "CloudLucent",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}