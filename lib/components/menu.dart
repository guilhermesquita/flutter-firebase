import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_1/services/services_auth.dart';

class Menu extends StatelessWidget {
  final User user;
  const Menu({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(''),
              child: Icon(Icons.manage_accounts_rounded),
            ),
            accountName: Text(
              (user.displayName != null) ? user.displayName! : '',
            ),
            accountEmail: Text(user.email!),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('sair'),
            onTap: () {
              AuthService().deslogar();
            },
          )
        ],
      ),
    );
  }
}
