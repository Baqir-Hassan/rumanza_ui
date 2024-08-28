import 'package:flutter/material.dart';
import 'package:rumanza_app/pages/cafe.dart';
import 'package:rumanza_app/pages/golf_course.dart';
import 'package:rumanza_app/pages/login_page.dart';
import 'package:rumanza_app/pages/pro_shop.dart';
// import 'package:rumanza_app/pages/settings_page.dart';

class DashBoardUnsused extends StatelessWidget {
  const DashBoardUnsused({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 90, 12),
        actions: [
          // Comment out this code if drop down menu is not needed and uncomment the bottom one
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_add,
              color: Colors.white,
            ),
          ),
          // *********USE THIS PIECE OF CODE IF YOU WANT SEPERATE SETTINGS PAGE INSTEAD OF A DROP DOWN****************
          // IconButton(
          //   icon: const Icon(
          //     Icons.settings,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {
          //     // Handle settings button press
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const Settings()),
          //     );
          //   },
          // ),
          PopupMenuButton<String>(
            // color: Color.fromARGB(255, 236, 57, 191),
            icon: const Icon(Icons.settings, color: Colors.white),
            onSelected: (String value) {
              if (value == 'Account Information') {
                // Display Account Information.
              } else if (value == 'Change Password') {
                // Navigate to the change password screen
              } else if (value == 'Sign Out') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
                // Handle sign out action
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
                const PopupMenuItem<String>(
                  value: 'Sign Out',
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ];
            },
          ),
          //*********************************************************************************************** */
        ],
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top section: Current Month Dues and Previous Arrears
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Month Dues',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('\$1200', style: TextStyle(fontSize: 24.0)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Previous Arrears',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('\$200', style: TextStyle(fontSize: 24.0)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Golf Course, Cafe, Pro Shop
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GolfCourse(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)),
                    child: const Text('Golf Course',
                        style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Cafe(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)),
                    child: const Text(
                      'Cafe',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProShop(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 12, 90, 12)),
                    child: const Text(
                      'Pro Shop',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Monthly Subscriptions
              const Text('Monthly Subscriptions',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 179, 164, 164))),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Sr')),
                    DataColumn(label: Text('Type')),
                    DataColumn(label: Text('Amount')),
                    DataColumn(label: Text('Action')),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        const DataCell(Text('1')),
                        const DataCell(Text('Subscription 1')),
                        const DataCell(Text('\$200')),
                        DataCell(
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 12, 90, 12)),
                            child: const Text('Pay',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    // Add more rows as needed
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text('Last Paid Amounts',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.fromLTRB(37, 0, 37, 0),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 179, 164, 164))),
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Sr')),
                    DataColumn(label: Text('Type')),
                    DataColumn(label: Text('Amount')),
                  ],
                  rows: const [
                    DataRow(
                      cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Last Paid Amount')),
                        DataCell(Text('\$200')),
                        // DataCell(
                        //   ElevatedButton(
                        //     onPressed: () {},
                        //     style: ElevatedButton.styleFrom(
                        //         backgroundColor: const Color(0xFF4CAF50)),
                        //     child: const Text('Pay',
                        //         style: TextStyle(color: Colors.white)),
                        //   ),
                        // ),
                      ],
                    ),
                    // Add more rows as needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
