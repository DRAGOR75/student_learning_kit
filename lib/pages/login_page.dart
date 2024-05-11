import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_learning_kit/components/my_button.dart';
import 'package:student_learning_kit/components/textfiled.dart';
import 'dart:developer';
import 'forgot_password_page.dart';
import 'package:student_learning_kit/components/background_image.dart';
class LoginPage extends StatefulWidget {
    final Function()? onTap;

    LoginPage({super.key,required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController=TextEditingController();

  final passwordController=TextEditingController();

  // sign user in
  void signUsernIn () async{

    // show loading circle
    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    });


    log("Button CLicked");
    log(emailController.text);
    log( passwordController.text);
    //try sign in
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text,
        password: passwordController.text,);
      Navigator.pop(context);
    } on FirebaseAuthException catch(e){
      Navigator.pop(context);
     wrongErrorMessage(e.code);
    }


  }
  //wrong email msg popup
  void wrongErrorMessage(String message){
    showDialog(context: context, builder: (context){
      return  AlertDialog(
        backgroundColor: Colors.deepPurple,
        title: Text(message,
        style: const TextStyle(color: Colors.white),),
      );
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(

        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height:50),
                //logo
                const SafeArea(
                  child: Icon(Icons.face_6_rounded,
                    color: Colors.white,
                    size: 80,
                  ),

                ),
                const SizedBox(height:50),
                //wellcome you have been missed
                const Text('Welcome back, you have been missed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
                const SizedBox(height: 15,),
                //user name text field
                SizedBox(width: 700,
                  child: Mytextfield(controller: emailController,
                  hintText: 'Email',
                  obscureText: false,),
                ),

                const SizedBox(height: 15,),
                //password text field
                SizedBox( width: 700,
                  child: Mytextfield(controller: passwordController,

                  hintText: 'password',
                  obscureText: true,),

                ),

                const SizedBox(height: 15,),
                // fotgot password

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                         GestureDetector(
                           onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                               return ForgotPasswordPage();
                             },),);
                             },
                           child:  Text('Forgot Password?',
                      style:TextStyle(color: Colors.white)),
                         ),

                    ],
                  ),
                ),
                const SizedBox(height: 10,),

                //signin button

                MyButton(
                  onTap: signUsernIn,
                ),
                const SizedBox(height: 10,),

                //not a member register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text("Register Now?,",
                        style: const TextStyle(
                          color: Colors.white,

                        ),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

      ),
    ],
    );
  }
}
