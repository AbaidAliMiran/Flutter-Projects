import 'package:flutter/material.dart';
import 'package:login_ui/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  double dwidth;
  RegisterPage({super.key, required this.dwidth});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
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
      width: widget.dwidth,
      padding: const EdgeInsets.only(top: 10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Create Acount",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: "Name",
                prefixIcon: const Icon(Icons.person),
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
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow,
              ),
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  "Create",
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
      width: widget.dwidth,
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: TextButton(
        child: const Text(
          "Sign In",
          style: TextStyle(
              color: Colors.yellow,
              fontSize: 20,
              decoration: TextDecoration.underline),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
      ),
    );
  }
}
