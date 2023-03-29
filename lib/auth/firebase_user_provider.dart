import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AgendamentoFirebaseUser {
  AgendamentoFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AgendamentoFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AgendamentoFirebaseUser> agendamentoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AgendamentoFirebaseUser>(
      (user) {
        currentUser = AgendamentoFirebaseUser(user);
        return currentUser!;
      },
    );
