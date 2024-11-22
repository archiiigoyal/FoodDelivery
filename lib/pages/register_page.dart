// ignore_for_file: use_build_context_synchronously


import 'package:flutter/material.dart';
import 'package:foodtemp/components/my_button.dart';
import 'package:foodtemp/components/my_textfield.dart';
import 'package:foodtemp/services/auth/auth_service.dart';




class RegisterPage extends StatefulWidget {
 final void Function()? onTap;
 const RegisterPage({
   super.key,
   required this.onTap,
 });




 @override
 State<RegisterPage> createState() => _RegisterPageState();
}




class _RegisterPageState extends State<RegisterPage> {
 //text editing controllers
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final TextEditingController confirmPasswordController =TextEditingController();




  //register method
  register() async{
    //get auth service
    final authService=AuthService();


    //check if passwords match -> create user
    if(passwordController.text==confirmPasswordController.text){
      //try creating user
      try{
        await authService.signUpWithEmailPassword(emailController.text, passwordController.text,);
      }
      //display any errors
      catch(e){
        showDialog(
          context: context,
          builder: (context)=>AlterDialog(
            title: Text(e.toString()),
          ));
      }
    }
    //if passwords dont match-> show error
    else{
       showDialog(
          context: context,
          builder: (context)=>const AlterDialog(
            title: Text("Passwords dont match"),
          ));


    }

}

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Theme.of(context).colorScheme.surface,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           //logo
           Icon(
             Icons.lock_open_rounded,
             size: 100,
             color: Theme.of(context).colorScheme.inversePrimary,
           ),
           const SizedBox(height: 25),
           //message, app slogan
           Text(
             "Let's create an account for you.",
             style: TextStyle(
               fontSize: 16,
               color: Theme.of(context).colorScheme.inversePrimary,
             ),
           ),
           const SizedBox(height: 25),
           //email textfield
           MyTextfield(
               controller: emailController,
               hintText: "Email",
               obscureText: false),
           const SizedBox(height: 25),




           //password textfield
           MyTextfield(
               controller: passwordController,
               hintText: "Password",
               obscureText: true),
           const SizedBox(height: 25),




           //confirm password textfield
           MyTextfield(
               controller: confirmPasswordController,
               hintText: "Confirm Password",
               obscureText: true),
           const SizedBox(height: 25),
           //sign up btn
           MyButton(text: "Sign Up", onTap:register ),
           const SizedBox(height: 25),




           //Already have an account? Login here.
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 "Already have an account? ",
                 style: TextStyle(
                     color: Theme.of(context).colorScheme.inversePrimary),
               ),
               const SizedBox(height: 25),
               GestureDetector(
                 onTap: widget.onTap,
                 child: Text(
                   "Login now.",
                   style: TextStyle(
                     color: Theme.of(context).colorScheme.inversePrimary,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ],
           )
         ],
       ),
     ),
   );
 }
}


class AlterDialog extends StatelessWidget {
  final Widget title;


  const AlterDialog({super.key,
    required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
