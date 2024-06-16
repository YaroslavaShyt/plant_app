import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_event.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState());

  
  Stream<AuthState> mapEventToState(AuthEvent event) async*{

  }
}
