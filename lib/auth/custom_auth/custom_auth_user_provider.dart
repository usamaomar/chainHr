import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class HrChainAuthUser {
  HrChainAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserModelStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<HrChainAuthUser> hrChainAuthUserSubject =
    BehaviorSubject.seeded(HrChainAuthUser(loggedIn: false));
Stream<HrChainAuthUser> hrChainAuthUserStream() => hrChainAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
