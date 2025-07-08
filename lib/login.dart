import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login sayfası",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Passworddddd",
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
                print("Email: ${emailController?.text}");
                print("Şifre: ${passwordController?.text}");
                if (emailController != null && passwordController != null) {
                  if (emailController!.text.isNotEmpty &&
                      passwordController!.text.isNotEmpty) {
                  } else {
                    print("Lütfen bilgilerinizi giriniz");
                    //
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
