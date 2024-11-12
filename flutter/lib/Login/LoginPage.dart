import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  GlobalKey<FormState> mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: mykey,
        child: Column(
          children: [
            Image.network(
              'https://cdn-icons-png.freepik.com/512/7067/7067965.png',
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'You cannot enter an empty field';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                controller: EmailController,
                decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(strokeAlign: 20),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(strokeAlign: 20, width: 3),
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'You cannot enter an empty field';
                  } else if (value.length > 10 || value.length < 5) {
                    return 'Password must be between 5 and 10 characters';
                  }
                  return null;
                },
                controller: PasswordController,
                obscureText: true, 
                decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(strokeAlign: 20),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(strokeAlign: 20, width: 3),
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(200, 80)),
                    backgroundColor: WidgetStatePropertyAll(Colors.teal)),
                onPressed: () {
                  if (mykey.currentState!.validate()) {
                    // Proceed to next page or login logic
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
