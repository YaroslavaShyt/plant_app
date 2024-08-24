import 'package:equatable/equatable.dart';

enum HomeStatus { loading, success, failure }

class HomeState extends Equatable {
  const HomeState({
    this.homeStatus = HomeStatus.loading,
  });

  HomeState copyWith({
    HomeStatus? homeStatus,
  }) {
    return HomeState(
      homeStatus: homeStatus ?? this.homeStatus,
    );
  }

  final HomeStatus homeStatus;

  @override
  List<Object?> get props => [homeStatus,];
}
