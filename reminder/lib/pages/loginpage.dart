import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //login
                const Icon(
                  Icons.message,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Welcome back you've been missed!",
                ),
                const SizedBox(
                  height: 25,
                ),
//email textfield
                TextField(
                  controller: emailController,
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                //button
                ElevatedButton(
                  onPressed: () {
                    emailController.clear;
                    passwordController.clear;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HomePage(username: emailController.text),
                      ),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Log In"),
                ),
                //MyButton(onTap: SignIn, text: 'Sign In'),
                const SizedBox(
                  height: 50,
                ),
                //new register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New User?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Register Now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
