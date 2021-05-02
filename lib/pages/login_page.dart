import 'package:flutter/material.dart';

import 'package:chat_app/widgets/utils.dart';
import 'package:chat_app/widgets/blue_button.dart';
import 'package:chat_app/widgets/custom_input.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Logo(title: 'Messenger',),
                _Form(),
                Labels(
                  text1: 'New here?', 
                  text2: 'Create an account!', 
                  route: 'register',
                ),

                Text('Terms of Service', style: TextStyle(fontWeight: FontWeight.w300))

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: <Widget>[

          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Password',
            textController: passwordController,
            isPassword: true,
          ),
          BlueButton(
            text: 'Log in', 
            onPressed: (){
              print('Email: ' + emailController.text);
              print('Pass: ' + passwordController.text);
            }
          )
        ],
      ),
    );
  }
}

