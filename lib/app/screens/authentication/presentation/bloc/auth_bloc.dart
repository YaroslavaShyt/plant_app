import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/routing/routes.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_event.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_state.dart';
import 'package:plant_app/domain/inavigation_util.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required INavigationUtil navigationUtil,
  })  : _navigationUtil = navigationUtil,
        super(const AuthState()) {
    on<AuthEvent>(_onEvent);
  }

  final INavigationUtil _navigationUtil;

  void navigateToHome() =>
      _navigationUtil.navigateToAndMakeRoot(Routes.routeHome);

  void _onEvent(AuthEvent event, Emitter<AuthState> emit) {
    if (event.userAuthEvent == UserAuthEvents.initial) {
      _onBack(emit);
    } else if (event.userAuthEvent == UserAuthEvents.start) {
      _onStart(emit);
    } else if (event.userAuthEvent == UserAuthEvents.login) {
      _onLogin(emit);
    } else if (event.userAuthEvent == UserAuthEvents.registration) {
      _onSignUp(emit);
    }
  }

  void _onStart(Emitter<AuthState> emit) {
    emit(const AuthState(userAuthState: UserAuthStates.chooseLoginOrRegister));
  }

  void _onLogin(Emitter<AuthState> emit) {
    emit(state.copyWith(userAuthState: UserAuthStates.login));
  }

  void _onSignUp(Emitter<AuthState> emit) {
    emit(state.copyWith(userAuthState: UserAuthStates.registration));
  }

  void _onBack(Emitter<AuthState> emit) {
    emit(state.copyWith(userAuthState: UserAuthStates.start));
  }
}
