import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_learning_kit/components/my_button.dart';
import 'package:student_learning_kit/components/textfiled.dart';
import 'dart:developer';
class LoginPage extends StatelessWidget {

   LoginPage({super.key
  });

  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  // sign user in
  void signUsernIn () async{
    log("Button CLicked");
    log(emailController.text);
    log( passwordController.text);
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text,
      password: passwordController.text,);

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height:50),
            //logo
            const SafeArea(
              child: Icon(Icons.lock,
                size: 50,
              ),

            ),
            const SizedBox(height:50),
            //wellcome you have been missed
            const Text('Wellcome Back you have been missed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),),
            const SizedBox(height: 15,),
            //user name text field
            Mytextfield(controller: emailController,
            hintText: 'username',
            obscureText: false,),

            const SizedBox(height: 15,),
            //password text field
            Mytextfield(controller: passwordController,
            hintText: 'password',
            obscureText: true,),

            const SizedBox(height: 15,),
            // fotgot password

            const Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text('Forgot Password?',
                  style:TextStyle(color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 25,),

            //signin button

            MyButton(
              onTap: signUsernIn,
            ),

            //not a member register now
          ],
        ),
      ),
    );
  }
}
