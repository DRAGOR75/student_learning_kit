import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SingleChildScrollView(
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
              const Text('Start Your New journey',
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

              Mytextfield(controller: confirmPasswordController,
                  hintText: ' confirm password',
                  obscureText: false),

              const SizedBox(height: 15,),
              // fotgot password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap:widget.onTap,
                      child: Text('Forgot Password?',
                          style:TextStyle(color: Colors.black)),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?,",
                  style: const TextStyle(
                    color: Colors.blue,

                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
