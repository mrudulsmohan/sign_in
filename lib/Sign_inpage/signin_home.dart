import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sign_in/Sign_inpage/widgets/login_button.dart';
import 'package:sign_in/Sign_inpage/widgets/password.dart';
import 'package:sign_in/Sign_inpage/widgets/remember_password.dart';
import 'package:sign_in/Sign_inpage/widgets/squareiconbutton.dart';
import 'package:sign_in/Sign_inpage/widgets/username.dart';
import 'package:sign_in/register_page/register_home.dart';

class SigninHome extends StatelessWidget {
  const SigninHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    double containerWidth = screenWidth *
        (ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 0.3 : 0.8);
    double containerHeight = screenHeight *
        (ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 0.75 : 0.95);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sign In Page',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: containerWidth,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Welcome back! Please sign in to continue.',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    Textname(
                        title: 'Username',
                        hintext: 'Username',
                        width: containerWidth * 0.8,
                        height: screenHeight * 0.09,
                        nameController: nameController),
                    Typepassword(
                        title: 'Password',
                        hintText: 'Password',
                        width: containerWidth * 0.8,
                        height: screenHeight * 0.12,
                        passwordController: passwordController),
                    RememberPasswordCheckbox(),
                    const SizedBox(height: 20),
                    LoginButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        buttonText: 'Sign In'),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterHome()),
                            );
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            indent: containerWidth * 0.05,
                            endIndent: 10,
                          ),
                        ),
                        const Text("OR"),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: containerWidth * 0.05,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SquareIconButton(
                          icon: Icons.facebook,
                          color: const Color.fromARGB(255, 236, 231, 231),
                          onPressed: () {
                            // Add your onPressed code here!
                          },
                        ),
                        SizedBox(width: screenWidth * 0.015),
                        SquareIconButton(
                          icon: Icons.g_mobiledata,
                          color: const Color.fromARGB(255, 236, 231, 231),
                          onPressed: () {},
                        ),
                        SizedBox(width: screenWidth * 0.015),
                        SquareIconButton(
                          icon: Icons.twelve_mp,
                          color: const Color.fromARGB(255, 236, 231, 231),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}