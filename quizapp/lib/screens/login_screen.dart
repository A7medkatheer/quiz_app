import 'package:flutter/material.dart';
import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/screens/category_screens.dart';
// import 'package:quizapp/screens/opening_screen.dart';
// import 'package:quizapp/screens/test_screens.dart';

// import 'test_screens.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future<bool> _showExitConfirmationDialog(BuildContext context) async {
    bool shouldExit = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Exit App'),
        content: Text('Do you want to exit the app?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Yes'),
          ),
        ],
      ),
    );

    return shouldExit ? true : false; // return true/false
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _showExitConfirmationDialog(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xff358032),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "images/pngegg.png",
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.85,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Color(0xffEFECEC),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                hintText: "Username",
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              validator: (value) {
                                // Validate username here
                                if (value!.isEmpty) {
                                  return "Please enter a username";
                                  // Display an error message for empty field
                                } else if (value.length <= 8) {
                                  return "Username must be at least 8 characters long";
                                  // Display an error message for username length
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                hintText: "e-mail",
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              validator: (value) {
                                // Validate username here
                                if (value!.isEmpty) {
                                  return "Please enter an email address";
                                  // Display an error message for empty email
                                } else if (!value.contains('@')) {
                                  return "missing @ symbol";
                                  // Display an error message for missing @ symbol
                                } else if (!value.contains('.')) {
                                  return "missing dot (.) symbol";
                                  // Display an error message for missing dot (.) symbol
                                } else if (!value.endsWith('com')) {
                                  return "Please enter a valid email address";
                                  // Display an error message for missing "com" at the end
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: const Icon(Icons.visibility_off),
                                hintText: "Password",
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              validator: (value) {
                                // Validate password here
                                if (value!.isEmpty) {
                                  return "Please enter a password";
                                  // Display an error message for empty password
                                } else if (value.length < 10) {
                                  return "Password must be at least 10 characters long";
                                  // Display an error message for password length
                                } else if (!RegExp(r'(?=.*?[A-Z])')
                                    .hasMatch(value)) {
                                  return "Password must contain at least one uppercase letter";
                                  // Display an error message for uppercase requirement
                                } else if (!RegExp(r'(?=.*?[a-z])')
                                    .hasMatch(value)) {
                                  return "Password must contain at least one lowercase letter";
                                  // Display an error message for lowercase requirement
                                } else if (!RegExp(r'(?=.*?[0-9])')
                                    .hasMatch(value)) {
                                  return "Password must contain at least one number";
                                  // Display an error message for number requirement
                                } else if (!RegExp(r'(?=.*?[!@#\$&*~])')
                                    .hasMatch(value)) {
                                  return "Password must contain at least one special character";
                                  // Display an error message for special character requirement
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text("New to the quizz app? "),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Register ",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: ElevatedButton(
                              onPressed: () {
                                // Validate all fields before navigating
                                // If validations pass, navigate to the next screen
                                //  (_formKey.currentState!.validate())
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          CategoryScreens(),
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          const Icon(
                            Icons.fingerprint,
                            color: Colors.blue,
                            size: 60,
                          ),
                          const Text(
                            "Use Touch ID",
                            style: TextStyle(color: Color(0xffA9A8A6)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                activeColor: Colors.green,
                              ),
                              const Text("Remember me "),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.07,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
