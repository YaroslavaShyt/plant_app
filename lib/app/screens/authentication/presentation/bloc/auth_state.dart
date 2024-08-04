import 'package:equatable/equatable.dart';

enum UserAuthStates {
  start,
  chooseLoginOrRegister,
  login,
  loginSuccess,
  loginFailure,
  registration,
  registrationSuccess,
  registrationFailure,
}

class AuthState extends Equatable {
  const AuthState({
    this.userAuthState = UserAuthStates.start,
  });

  final UserAuthStates userAuthState;

  AuthState copyWith({
    UserAuthStates? userAuthState,
  }) {
    return AuthState(
      userAuthState: userAuthState ?? this.userAuthState,
    );
  }

  @override
  List get props => [userAuthState];
}
