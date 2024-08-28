import 'package:flutter/material.dart';
import 'package:rumanza_app/pages/cafe.dart';
import 'package:rumanza_app/pages/golf_course.dart';
import 'package:rumanza_app/pages/login_page.dart';
import 'package:rumanza_app/pages/payment_history.dart';
import 'package:rumanza_app/pages/pro_shop.dart';
import 'package:rumanza_app/pages/total_dues.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashState createState() => _DashState();
}

class _DashState extends State<Dashboard> {
  bool _isBalanceVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Confirm Sign Out'),
                                content: const Text(
                                    'Are you sure you want to Sign Out'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text('Sign Out'))
                                ],
                              );
                            });
                      },
                      icon: const Icon(Icons.power_settings_new),
                    ),
                    const Spacer(),
                    Image.asset('assets/images/RUMANZA.png',
                        width: (MediaQuery.of(context).size.width / 2.8)),
                    const Spacer(),
                    PopupMenuButton<String>(
                      // color: Color.fromARGB(255, 236, 57, 191),
                      icon: const Icon(Icons.person_pin),
                      onSelected: (String value) {
                        if (value == 'Account Information') {
                          // Display Account Information.
                        } else if (value == 'Change Password') {
                          // Navigate to the change password screen
                        }
                      },
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem<String>(
                            value: 'Account Information',
                            child: Text(
                              'Account Information',
                              style: TextStyle(),
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Change Password',
                            child: Text(
                              'Change Password',
                              style: TextStyle(
                                  // color: Colors.white,
                                  ),
                            ),
                          ),
                        ];
                      },
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: ,
                // ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage:
                                AssetImage('assets/images/default_pfp.png'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gp Capt Sajjad Hussain Retd',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'DEF FORCES (R)',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isBalanceVisible = !_isBalanceVisible;
                                  });
                                },
                                child: Text(
                                  _isBalanceVisible
                                      ? 'Hide\nDues'
                                      : 'Show\nDues',
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 12, 90, 12),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                'Current Dues',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 12, 90, 12),
                                  // fontFamily: 'Cursive',
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Arrears(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Arrears',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 12, 90, 12),
                                  ),
                                ),
                              ),
                              // const Spacer()
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '12345678912345',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _isBalanceVisible ? 'PKR 123456' : 'PKR XXXXXX',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 12, 90, 12),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Pay Dues',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 2),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PaymentHistory(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 12, 90, 12),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Payment History',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GolfCourse(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.425,
                          150,
                        ),
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)
                            .withOpacity(0.9), // Transparent green color
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Golf Course',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProShop(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.425,
                          150,
                        ),
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)
                            .withOpacity(0.9), // Transparent green color
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Pro Shop',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                // const Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),

                Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cafe(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.425,
                          150,
                        ),
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)
                            .withOpacity(0.9), // Transparent green color
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Cafe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width * 0.425,
                          150,
                        ),
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)
                            .withOpacity(0.9), // Transparent green color
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'News Flash',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
