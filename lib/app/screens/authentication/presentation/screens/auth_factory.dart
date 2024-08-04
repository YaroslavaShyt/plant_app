import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_bloc.dart';
import 'package:plant_app/app/screens/authentication/presentation/screens/auth_screen.dart';
import 'package:plant_app/app/utils/di_manager.dart';
import 'package:plant_app/domain/inavigation_util.dart';

class AuthFactory {
  static Widget build() {
    final AuthBloc authBloc =
        AuthBloc(navigationUtil: diManager.get<INavigationUtil>());
    return BlocProvider<AuthBloc>.value(
        value: authBloc,
        child: AuthScreen(
          bloc: authBloc,
        ));
  }
}
