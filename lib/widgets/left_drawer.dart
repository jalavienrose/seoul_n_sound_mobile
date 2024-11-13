import 'package:flutter/material.dart';
import 'package:seoul_n_sound/screens/menu.dart';
import 'package:seoul_n_sound/screens/shopentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: const Column(
                  children: [
                    Text(
                      'Seoul N Sound',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Text(
                      "Add your favorite K-Merch here!",
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
             ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Homepage'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text('Add Product'),
                // Bagian redirection ke ShopEntryFormPage
                onTap: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopEntryFormPage(),
                  ));
                },
              ),
        ],
      ),
    );
  }
}