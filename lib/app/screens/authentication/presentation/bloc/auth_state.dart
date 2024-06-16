import 'package:equatable/equatable.dart';

enum UserAuthStates { authenticated, notAuthenticated }

class AuthState extends Equatable {
  const AuthState({this.userAuthState = UserAuthStates.notAuthenticated});

  final UserAuthStates userAuthState;

  AuthState copyWith({UserAuthStates? userAuthState}) {
    return AuthState(userAuthState: userAuthState ?? this.userAuthState);
  }

  @override
  List get props => [];
}
