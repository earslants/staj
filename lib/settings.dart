import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_button.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isPasswordVisible = false;

  void login() {
    print("Giriş Yapıldı");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ayarlar sayfası",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: _isPasswordVisible
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
                keyboardType: TextInputType.number,
                obscureText: !_isPasswordVisible,
              ),
              const SizedBox(height: 20),
              MyButton(
                buttonText: "Kaydet",
                onTap: () {
                  print("KAYDEDİLDİ");
                },
              ),
            ],
          ),
        ));
  }
}
