import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/screens/home/bloc/home_cubit.dart';
import 'package:plant_app/app/screens/home/home_screen.dart';
import 'package:plant_app/app/utils/di_manager.dart';
import 'package:plant_app/domain/inavigation_util.dart';

class HomeFactory {
  static Widget build() {
    final HomeCubit homeCubit =
        HomeCubit(navigationUtil: diManager.get<INavigationUtil>());
    return BlocProvider.value(
        value: homeCubit,
        child: HomeScreen(
          homeCubit: homeCubit,
        ));
  }
}
