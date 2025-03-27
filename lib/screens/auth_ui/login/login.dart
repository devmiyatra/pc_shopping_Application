// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc_shopping_application/constants/constants.dart';
import 'package:pc_shopping_application/constants/routes.dart';
import 'package:pc_shopping_application/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:pc_shopping_application/screens/Forgot%20password/forgot_password.dart';
import 'package:pc_shopping_application/screens/auth_ui/sing_up/singup.dart';
import 'package:pc_shopping_application/widgets/primarybutton/primarybutton.dart';
import 'package:pc_shopping_application/widgets/top_titles/top_titles.dart';

import '../../custom_bottom_bar/custom_bottom_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(
                  subtitle: "Welcome Back To Pc Store App", title: "Login"),
              const SizedBox(
                height: 46.0,
              ),
              TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                controller: password,
                obscureText: isShowPassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.password_sharp,
                  ),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child:  Icon(
                        isShowPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      )),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              primaryButton(
                title: "Login",
                onPressed: () async {
                  bool isVaildated = loginValidation(email.text, password.text);
                  if (isVaildated) {
                    bool isLogined = await FirebaseAuthHelper.instance
                        .login(email.text, password.text, context);
                    if (isLogined) {
                      Routes.instance.pushAndRemoveUnit(
                          widget: const CustomBottomBar(), context: context);
                    }
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 207.8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Routes.instance
                            .push(widget: const Forgotpassword(), context: context);
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],

                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(child: Text("Don't have an account?")),
              const SizedBox(
                height: 2.0,
              ),
              Center(
                child: CupertinoButton(
                  onPressed: () {
                    Routes.instance
                        .push(widget: const SignUp(), context: context);
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
