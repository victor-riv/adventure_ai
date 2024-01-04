import 'package:flutter/material.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({super.key});

  Widget _buildSignUpContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              top: 0.50 * MediaQuery.of(context).size.height,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Welcome to Adventure Ai',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
                    width: double.infinity,
                    height: 60, // Adjust the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        // Add logic to process sign-up
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        "Let's Get Started",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(color: Colors.grey),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
                    width: double.infinity,
                    height: 60, // Adjust the height of the button
                    child: OutlinedButton(
                      onPressed: () {
                        // Add logic to continue as a guest
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: const BorderSide(
                            color: Colors.white), // White border
                      ),
                      child: const Text(
                        'I already have an account',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSignUpContent(context);
  }
}
