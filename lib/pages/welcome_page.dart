import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rumanza_app/pages/login_page.dart';
import 'package:rumanza_app/widgets/gradient_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/golf_background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/RUMANZA.png',
                  width: 350,
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                Lottie.asset(
                  'assets/putt.json',
                  width: 350,
                ),
                const SizedBox(
                  height: 100,
                ),
                GradButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  btnText: 'Welcome',
                  size: const Size(200, 70),
                  font: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
