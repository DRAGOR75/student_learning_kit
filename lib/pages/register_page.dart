import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_learning_kit/components/background_image.dart';
import 'package:student_learning_kit/components/my_button.dart';
import 'package:student_learning_kit/components/textfiled.dart';
import 'dart:developer';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  RegisterPage({super.key,required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();

  // sign user up
  void signUsernUp () async{

    // show loading circle
    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    });


    log("Button CLicked");
    log(emailController.text);
    log( passwordController.text);
    //try creating an user
    try{
      //check if password is confirmed
     if (passwordController.text==confirmPasswordController.text){
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: emailController.text,
       password: passwordController.text,);
     }else{
       // show error message
       wrongErrorMessage("passwords dont match");
     }
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
    return  Stack(
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
                const Text('Start Your New journey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
                SizedBox(width: 700,
                  child: Mytextfield(controller: passwordController,
                    hintText: 'password',
                    obscureText: true,),
                ),

                const SizedBox(height: 15,),

                SizedBox(width: 700,
                  child: Mytextfield(controller: confirmPasswordController,
                      hintText: ' confirm password',
                      obscureText: false),
                ),

                const SizedBox(height: 15,),
                // fotgot password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap:widget.onTap,
                        child: Text('Already have an account',
                            style:TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),

                //signin button

                MyButton(
                  onTap: signUsernUp,
                ),
                const SizedBox(height: 25,),

                //not a member register now

              ],
            ),
          ),
        ),
      ),
    ],
    );
  }
}
