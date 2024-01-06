import 'package:adventure_ai/utils/firebase_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailTextProvider = StateProvider<String>((ref) => '');
final passwordTextProvider = StateProvider<String>((ref) => '');
final isLoadingProvider = StateProvider<bool>((ref) => false);

class SignUpSheet extends ConsumerWidget {
  SignUpSheet({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget _buildSignUpScreen(
      BuildContext context, WidgetRef ref, bool isLoading) {
    const buttonHeight = 50.0; // Set the height for buttons

    final email = ref.watch(emailTextProvider);
    final password = ref.watch(passwordTextProvider);

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
              "Let's create an account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 40),
            SizedBox(
              height: buttonHeight,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {
                  ref.watch(emailTextProvider.notifier).state = value.trim();
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0, // Adjust border width here
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0, // Adjust border width here
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                // Handle username input
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: buttonHeight,
              child: TextFormField(
                controller: passwordController,
                onChanged: (value) {
                  ref.read(passwordTextProvider.notifier).state = value.trim();
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0, // Adjust border width here
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0, // Adjust border width here
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                // Handle username input
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();
                        ref.read(isLoadingProvider.notifier).state = true;

                        await createUserWithEmailAndPassword(email, password);

                        // Clear text fields after account creation
                        emailController.clear();
                        passwordController.clear();

                        // Reset the state
                        ref.watch(emailTextProvider.notifier).state = '';
                        ref.watch(passwordTextProvider.notifier).state = '';

                        ref.read(isLoadingProvider.notifier).state = false;
                      },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor:
                      const Color(0xFF43137B), // Set transparent background
                ),
                child: isLoading
                    ? const CircularProgressIndicator()
                    : const Text(
                        "Create Account",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
              ),
            ),
            const SizedBox(height: 40),
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
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: buttonHeight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // Set the background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.mail,
                      size: 24,
                      color: Colors.black,
                    ), // Replace with Google icon
                    SizedBox(width: 30), // Adjust spacing as needed
                    Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 14, color: Colors.black),
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
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // Set the background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.apple,
                        size: 24,
                        color: Colors.black), // Replace with Apple icon
                    SizedBox(width: 30), // Adjust spacing as needed
                    Text(
                      "Continue with Apple",
                      style: TextStyle(fontSize: 14, color: Colors.black),
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
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  // Set the background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 24,
                      color: Colors.black,
                    ), // Replace with Facebook icon
                    SizedBox(width: 30), // Adjust spacing as needed
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(fontSize: 14, color: Colors.black),
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(isLoadingProvider.notifier).state;
    return _buildSignUpScreen(context, ref, isLoading);
  }
}
