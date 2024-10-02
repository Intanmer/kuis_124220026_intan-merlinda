import 'dart:ui';
import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    // Memeriksa kredensial login
    if (usernameController.text == 'admin' && passwordController.text == 'admin00') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: usernameController.text)),
      );
    } else {
      // Menampilkan pesan kesalahan jika kredensial salah
      print("Username atau password salah."); // Pesan di console
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Kesalahan'),
            content: Text('Username atau password salah.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Mengganti warna latar belakang menjadi hijau
          Container(color: Colors.green),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header yang lebih sederhana
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'BELA NEGARA',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                // Tempat untuk gambar di atas kotak login
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      SizedBox(height: 20),
                      _buildTextField(usernameController, 'USERNAME', Icons.person),
                      SizedBox(height: 10),
                      _buildTextField(passwordController, 'PASSWORD', Icons.lock, obscureText: true),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => login(context),
                        child: Text('MASUK'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon, {bool obscureText = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.black),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      obscureText: obscureText,
    );
  }
}