import 'package:flutter/material.dart';
import 'package:shopping_application/common/widgets/custom_bottom.dart';
import 'package:shopping_application/common/widgets/custom_textfield.dart';
import 'package:shopping_application/constants/global_variable.dart';
enum Auth{
   signin,
   signup
}
class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController  _emailController = TextEditingController();
  final TextEditingController  _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackGroundColor,
      body:SafeArea(
        child:  Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 8),
                child: Text("Welcome" ,
                 style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)
                ,),
              ),
              ListTile(
              tileColor: _auth==Auth.signup ? GlobalVariables.backgroundColor : GlobalVariables.greyBackGroundColor,
              title: const Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val){
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
              if(_auth==Auth.signup)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 10,),
                        CustomTextField(Controller: _nameController, hint: "Name"),
                        const SizedBox(height: 10,),
                        CustomTextField(Controller: _emailController, hint: "Email"),
                        const SizedBox(height: 10,),
                        CustomTextField(Controller: _passwordController, hint: "Password"),
                        const SizedBox(height: 10,),
                        CustomBottom(text: "Sign-Up ", onTap: (){})
                      ],
                    ),
                  ),
                ),
              ListTile(
              title: const Text(
                'Sign-In.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val){
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if(_auth==Auth.signin)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      CustomTextField(Controller: _emailController, hint: "Email"),
                      const SizedBox(height: 10,),
                      CustomTextField(Controller: _passwordController, hint: "Password"),
                      const SizedBox(height: 10,),
                      CustomBottom(text: "Sign-In ", onTap: (){})
                    ],
                  ),
                ),
              ),
          ],

        ),
      )
    );
  }
}
