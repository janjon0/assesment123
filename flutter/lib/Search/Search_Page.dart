import 'package:flutter/material.dart';
import 'package:project1/Login/LoginPage.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();
  final String loginText = 'Login Page';
  final String signupText = 'Signup Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: myKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'You cannot enter an empty field';
                  } else if (value != loginText && value != signupText) {
                    return 'There is no page with this text';
                  }
                  return null;
                },
                controller: searchController,
                decoration: InputDecoration(
                  label: Text('Search'),
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 80)),
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              ),
              onPressed: () {
                if (myKey.currentState!.validate()) {
                  if (searchController.text == loginText) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  } else if (searchController.text == signupText) {
                    // Implement the signup navigation or action here
                    // Example:
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  }
                }
              },
              child: Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
