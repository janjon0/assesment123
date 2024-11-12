import 'package:flutter/material.dart';
import 'package:project1/Login/LoginPage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String savedEmail = '';
  String savedPassword = '';

  void _signup() {
    setState(() {
      savedEmail = emailController.text;
      savedPassword = passwordController.text;
    });

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Signup Successful!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email', hintText: 'Enter your email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', hintText: 'Enter your password'),
            ),
            ElevatedButton(
              onPressed: _signup,
              child: Text('Sign Up'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Text('Go to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
