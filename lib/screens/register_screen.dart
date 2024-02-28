import 'package:flutter/material.dart';
import 'package:project_1/services/services_auth.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmaSenhaController = TextEditingController();
  final _nomeController = TextEditingController();

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(50),
        child: Center(
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
                      controller: _nomeController,
                      decoration: const InputDecoration(
                        hintText: 'Nome',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _senhaController,
                      decoration: const InputDecoration(
                        hintText: 'Senha',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _confirmaSenhaController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Confirme sua senha',
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_senhaController.text ==
                            _confirmaSenhaController.text) {
                          authService
                              .registrarUsuario(
                                  email: _emailController.text,
                                  nome: _nomeController.text,
                                  senha: _senhaController.text)
                              .then((String? erro) {
                            if (erro != null) {
                              final snackBar = SnackBar(
                                content: Text(erro),
                                backgroundColor: Colors.red,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              Navigator.pop(context);
                            }
                          });
                        } else {
                          const snackBar = SnackBar(
                            content: Text('As Senhas não correspondem!'),
                            backgroundColor: Colors.red,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: const Text('Cadastrar'),
                    ),
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
