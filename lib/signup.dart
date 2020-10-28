import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tik_tok/policy.dart';
import 'package:tik_tok/variables.dart';

class SignUp extends StatelessWidget {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  registerUser() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((singndUser) {
      userCollection.doc(singndUser.user.uid).set({
        'username': userNameController.text,
        'password': passwordController.text,
        'email': emailController.text,
        'userid': singndUser.user.uid,
        'profilepic':
            'https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png'
      });
    });
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.red[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Let\'s Go',
              style: myStyle(25, Colors.black, FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(
              'Sign Up',
              style: myStyle(25, Colors.black, FontWeight.w600),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: myStyle(20),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: myStyle(20),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: myStyle(20),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => registerUser(),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Register',
                    style: myStyle(20, Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I agree to',
                  style: myStyle(20),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () => Get.to(Policy()),
                  child: Text(
                    'Terms and Policy',
                    style: myStyle(20, Colors.purple),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
