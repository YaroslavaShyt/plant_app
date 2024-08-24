import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/routing/routes.dart';
import 'package:plant_app/app/screens/home/bloc/home_state.dart';
import 'package:plant_app/domain/inavigation_util.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required INavigationUtil navigationUtil,
  })  : _navigationUtil = navigationUtil,
        super(const HomeState());

  final INavigationUtil _navigationUtil;

  void onMyCollectionsPressed() => _navigationUtil.navigateTo(Routes.routeCollections);
}
