import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Column(
          children: [
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
            SizedBox(
              height: 16,
            ),
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
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.amber),
                  onPressed: () {
                    print('clicked login');
                  },
                  child: Text('Log in')),
            ),
            SizedBox(
              height: 62,
            ),
            Text(
              'Or sign in with',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
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
            Row(
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.amber),
                    onPressed: () {},
                    child: Text('Sign up')),
              ],
            )
          ],
        ));
  }
}
