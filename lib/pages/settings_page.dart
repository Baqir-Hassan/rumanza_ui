import 'package:flutter/material.dart';
import 'package:rumanza_app/pages/login_page.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 90, 12),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, // Border color
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0), // Rounded corners
            ),
            child: ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Account Information'),
              onTap: () {
                // Handle change password action
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, // Border color
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0), // Rounded corners
            ),
            child: ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Change Password'),
              onTap: () {
                // Handle change password action
              },
            ),
          ),
          const SizedBox(height: 8), // Spacing between tiles
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, // Border color
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0), // Rounded corners
            ),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                'Sign Out',
                style: TextStyle(),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
                // Handle sign out action
              },
            ),
          ),
        ],
      ),
    );
  }
}
