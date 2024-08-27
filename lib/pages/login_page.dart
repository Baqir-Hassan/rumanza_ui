import 'package:flutter/material.dart';
import 'package:rumanza_app/pages/dashboard_2.dart';
import 'package:rumanza_app/widgets/gradient_button.dart';
import 'package:rumanza_app/widgets/login_field.dart';
import 'package:lottie/lottie.dart';
import 'package:rumanza_app/widgets/password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 12, 90, 12),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/golf_bg.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/RUMANZA.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                const UserName(hintText: 'User Name'),
                const SizedBox(
                  height: 15,
                ),
                const LoginField(
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 5,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '* Use Membership No as User Name,',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "* If password doesn't change use CNIC as your Password",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GradButton(
                      btnText: 'Reset Password',
                      color: const Color.fromARGB(225, 128, 0, 0),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 10),
                    GradButton(
                      btnText: 'Sign In',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dash(),
                            ));
                      },
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Lottie.asset(
                  'assets/golf.json',
                  width: 300,
                )
                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: const AssetImage(
                //           'assets/images/Lottie_BG.jpg',
                //         ),
                //         fit: BoxFit.cover,
                //         colorFilter: ColorFilter.mode(
                //           Colors.white.withOpacity(0.8),
                //           BlendMode.dstATop,
                //         )),
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Lottie.asset(
                //     'assets/golf.json',
                //     width: 300,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
