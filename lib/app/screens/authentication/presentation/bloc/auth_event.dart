import 'package:equatable/equatable.dart';

enum UserAuthEvents {initial, start, login, registration }

class AuthEvent extends Equatable {
  const AuthEvent({this.userAuthEvent});
  final UserAuthEvents? userAuthEvent;

  AuthEvent copyWith({UserAuthEvents? userAuthEvent}) {
    return AuthEvent(userAuthEvent: userAuthEvent ?? this.userAuthEvent);
  }

  @override
  List get props => [];
}
