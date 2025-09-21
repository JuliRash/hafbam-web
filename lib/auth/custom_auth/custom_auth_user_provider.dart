import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class HafbamFinanceAuthUser {
  HafbamFinanceAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<HafbamFinanceAuthUser> hafbamFinanceAuthUserSubject =
    BehaviorSubject.seeded(HafbamFinanceAuthUser(loggedIn: false));
Stream<HafbamFinanceAuthUser> hafbamFinanceAuthUserStream() =>
    hafbamFinanceAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
