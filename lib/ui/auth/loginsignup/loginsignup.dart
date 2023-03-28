import 'package:flutter/material.dart';
import '../../../custom.dart';


class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: MyGradient(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo1.png',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 20),
                Column(
                  children: const [
                    InputField(hint: "Email", icon: Icon(Icons.email)),
                    SizedBox(height: 16),

                    InputField(hint: "Password", icon: Icon(Icons.lock))
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const CustomButton(

                      path: '/home',

                      child: Text("Login"),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forget Your Password?',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: IconButton(

                          icon: const Icon(Icons.phone),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login_with_phone');
                          },
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Image.asset('assets/ics_facbook.png',
                              width: 150, height: 150),
                          onPressed: () {},
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Image.asset('assets/ic-google.png', width: 90,
                              height: 100),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),

                Spacer(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Signup');
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),

      ),
    );
  }
}
