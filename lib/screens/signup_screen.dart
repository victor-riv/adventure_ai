import 'package:flutter/material.dart';

class SignUpSheet extends StatelessWidget {
  const SignUpSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const buttonHeight = 50.0; // Set the height for buttons

    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(120),
          topRight: Radius.circular(120),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            const Center(
                child: Text(
              "Let's Create an Account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 40),
            SizedBox(
              height: buttonHeight,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                // Handle username input
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: buttonHeight,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                obscureText: true,
                // Handle password input
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor:
                      const Color(0xFF43137B), // Set transparent background
                ),
                child: const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Center(child: Text("Already got an account?")),
            const SizedBox(height: 40),
            SizedBox(
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // Set the background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.mail, size: 24), // Replace with Google icon
                    SizedBox(width: 30), // Adjust spacing as needed
                    Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // Set the background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.apple, size: 24), // Replace with Apple icon
                    SizedBox(width: 30), // Adjust spacing as needed
                    Text(
                      "Continue with Apple",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // Set the background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.facebook,
                        size: 24), // Replace with Facebook icon
                    SizedBox(width: 30), // Adjust spacing as needed
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
