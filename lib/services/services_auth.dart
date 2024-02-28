import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> loginUsuario(
      {required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          return 'Email inválido';
        case 'wrong-password':
          return 'Senha inválida';
        case 'user-not-found':
          return 'Usuário não encontrado';
        case 'user-disabled':
          return 'Usuário desabilitado';
        case 'operation-not-allowed':
          return 'Operação não permitida';
        case 'weak-password':
          return 'Senha fraca';
        case 'email-already-in-use':
          return 'Email já cadastrado';
        case 'invalid-credential':
          return 'Credenciais inválidas';
      }
      return e.code;
    }
    return null;
  }

  Future<String?> registrarUsuario(
      {required String email,
      required String nome,
      required String senha}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: senha);

      await userCredential.user!.updateDisplayName(nome);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          return 'Email inválido';
        case 'weak-password':
          return 'Senha fraca';
        case 'email-already-in-use':
          return 'Email já cadastrado';
        case 'invalid-credential':
          return 'Credenciais inválidas';
      }
      return e.code;
    }
    return null;
  }

  Future<String?> redefinicaoSenha({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          return 'Email inválido';
        case 'user-not-found':
          return 'Usuário não encontrado';
        case 'operation-not-allowed':
          return 'Operação não permitida';
      }
      return e.code;
    }
    return null;
  }

  Future<String?> deslogar() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
    return null;
  }

  Future<String?> excluirConta({required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: _firebaseAuth.currentUser!.email!, password: senha);
      await _firebaseAuth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      return e.code;
    }
    return null;
  }
}
