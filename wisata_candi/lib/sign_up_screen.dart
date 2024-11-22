import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _obscurePassword = true;

  // Function to handle Sign Up
  void _signUp() {
    String name = _nameController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[a-z]')) ||
        !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      setState(() {
        _errorText =
            'Minimal 8 karakter, kombinasi [A-Z], [0-9], [a-z], dan [!@#\$%^&*(),.?":{}|<>]';
      });
      return;
    } else if (name.isEmpty || username.isEmpty || password.isEmpty) {
      setState(() {
        _errorText = 'Semua field harus diisi';
      });
      return;
    } else {
      setState(() {
        _errorText = '';
      });
    }
    // Use a logging framework instead of print
    debugPrint("Sign Up Berhasil");
    debugPrint("Nama: $name");
    debugPrint("Nama Pengguna: $username");
    debugPrint("Password: $password");
  }

  // Dispose controllers
  //TODO 2: Fungsi Dispose
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                  labelText: "Nama", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                  labelText: "Nama Pengguna", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Kata Sandi",
                errorText: _errorText.isNotEmpty ? _errorText : null,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_obscurePassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              obscureText: _obscurePassword,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _signUp();
              },
              child: const Text('Sign Up'),
            ),
          ],
        )),
      ),
    );
  }
}
