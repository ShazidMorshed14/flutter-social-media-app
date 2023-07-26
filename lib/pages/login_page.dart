import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Spacer(),
              Text(
                "Hello! Welcome back!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Login to continue",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      print('forgot password printed');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text('Forgot Password?')),
              ),
              SizedBox(height: 32),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber),
                    onPressed: () {
                      //-----basic way
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return HomePage();
                      // }));

                      //modern way
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Text('Log in')),
              ),
              Spacer(),
              Text(
                'Or sign in with',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Login with Google'),
                      ],
                    )),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Login with Facebook')
                      ],
                    )),
              ),
              Row(
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.amber),
                      onPressed: () {},
                      child: Text('Sign up')),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    ));
  }
}
