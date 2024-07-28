import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_event.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_state.dart';
import 'package:plant_app/domain/inavigation_util.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required INavigationUtil navigationUtil})
      : _navigationUtil = navigationUtil,
        super(const AuthState());

  final INavigationUtil _navigationUtil;

  Stream<AuthState> mapEventToState(AuthEvent event) async* {}
}
