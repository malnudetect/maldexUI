import 'package:flutter/material.dart';
import 'package:maldex/responsive_layout/mobile_screens/components_mobile/auth.dart';
import 'package:maldex/responsive_layout/mobile_screens/components_mobile/my_textfield.dart';
import 'package:maldex/responsive_layout/mobile_screens/components_mobile/squaretile.dart';

class MobileLogin extends StatelessWidget {
  MobileLogin({super.key});

////// Text Editing Controllers //////
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  ////// Sign User In method //////
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),

          ////// maldex logo //////
          Center(
            child: Container(
              height: 140,
              width: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/malauth.png'))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //////// Login Text //////
          const Center(
              child: Text(
            'Log In',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Color.fromARGB(211, 8, 25, 66),
            ),
          )),
          const SizedBox(
            height: 20,
          ),

          ////// TextFields //////
          MyTextField(
            icon: Icons.email,
            controller: emailController,
            hintText: 'Email Address',
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            icon: Icons.lock,
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          ////// Forgot Password //////
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color.fromARGB(210, 23, 49, 75),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ////// Sign In Button //////
          AuthButton(
            onTap: signUserIn,
          ),
          const SizedBox(
            height: 40,
          ),

          ////// or continue with //////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(235, 29, 145, 195),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.blue.shade300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ////// google or X sign in //////
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareTile(imagePath: 'assets/images/google.png'),
              SizedBox(
                width: 20,
              ),
              SquareTile(imagePath: 'assets/images/x.png')
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          ////// Dont have an account //////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color.fromARGB(235, 29, 145, 195),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
