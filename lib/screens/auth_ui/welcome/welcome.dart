import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:pc_shopping_application/constants/assets_images.dart';
import 'package:pc_shopping_application/constants/routes.dart';
import 'package:pc_shopping_application/screens/auth_ui/login/login.dart';
import 'package:pc_shopping_application/screens/auth_ui/sing_up/singup.dart';
import 'package:pc_shopping_application/widgets/primarybutton/primarybutton.dart';
import 'package:pc_shopping_application/widgets/top_titles/top_titles.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopTitles(subtitle: "Buy any Computer items from application", title: "Welcome"),

                Center(
                    child:
                    // Lottie.network('https://lottie.host/8d931777-bc6d-42fa-b1cf-2b53ce90d358/p8TXVaniUm.json')
                    Image.asset(
                      Assetsiamges.instance.welcomeimages,
                    )
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     CupertinoButton(
                //       onPressed: () {
                //
                //       },
                //       padding: EdgeInsets.zero,
                //       child: const Icon(
                //         Icons.facebook,
                //         size: 35,
                //         color: Colors.blue,
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 12,
                //     ),
                //     CupertinoButton(
                //       onPressed: () {},
                //       padding: EdgeInsets.zero,
                //       child: Image.asset(
                //         Assetsiamges.instance.gogglelogo,
                //         scale: 30.0,
                //       ),
                //     )
                //   ],
                // ),
                const SizedBox(
                  height: 15.0,
                ),
                // const SizedBox(
                //   height: 18.0,
                //   ),
                primaryButton(onPressed: () {
                  Routes.instance.push(widget: const Login(),context: context);
                },
                    title: "Login"
                ),
                const SizedBox(
                  height: 18.0,
                ),
                primaryButton(onPressed: () {
                  Routes.instance.pushAndRemoveUnit(widget: const SignUp(), context: context);
                },

                    title: "Sign up"
                )
              ],
            ),
          ),
        ));
  }
}