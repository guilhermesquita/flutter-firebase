import 'package:flutter/material.dart';
import 'package:project_1/screens/register_screen.dart';
import 'package:project_1/services/services_auth.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const FlutterLogo(size: 76),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'E-mail',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    controller: _senhaController,
                    decoration: const InputDecoration(
                      hintText: 'Senha',
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        authService
                            .loginUsuario(
                                email: _emailController.text,
                                senha: _senhaController.text)
                            .then(
                          (String? error) {
                            if (error != null) {
                              final snackBar = SnackBar(
                                content: Text(error),
                                backgroundColor: Colors.red,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              Navigator.pop(context);
                            }
                          },
                        );
                      },
                      child: Text('Entrar')),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Entrar com google'),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text('Criar uma conta'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
