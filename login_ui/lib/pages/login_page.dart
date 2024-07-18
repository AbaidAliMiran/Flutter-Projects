import 'package:flutter/material.dart';
import 'package:login_ui/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double _devicewidth;
  @override
  Widget build(BuildContext context) {
    _devicewidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _titletextWidget(),
            _LoginWidget(),
            _createAccountWidget()
          ],
        ),
      ),
    );
  }

  Widget _titletextWidget() {
    return Container(
      width: _devicewidth,
      padding: const EdgeInsets.only(top: 50),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "Login to Continue",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _LoginWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: "Email",
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: "Password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createAccountWidget() {
    return Container(
      width: _devicewidth,
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: TextButton(
          child: const Text(
            "Create Account",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(dwidth: _devicewidth),
              ),
            );
          }),
    );
  }
}
