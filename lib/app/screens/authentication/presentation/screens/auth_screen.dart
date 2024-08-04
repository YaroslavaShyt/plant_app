import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/app/core/constants/constants.dart';
import 'package:plant_app/app/core/widgets/app_logo_text.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/core/widgets/version.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_bloc.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_event.dart';
import 'package:plant_app/app/screens/authentication/presentation/bloc/auth_state.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/animated_container_constraints.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/back_widget.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/login_form.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/sign_up_form.dart';
import 'package:plant_app/app/utils/colors_util.dart';
import 'package:plant_app/app/utils/images_factory.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    required this.bloc,
    super.key,
  });

  final AuthBloc bloc;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController? _emailTextController;
  TextEditingController? _passwordTextController;
  TextEditingController? _confirmPasswordTextController;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _confirmPasswordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController?.dispose();
    _passwordTextController?.dispose();
    _confirmPasswordTextController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
        return Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Image.asset(
                ImagesFactory.startPage,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                      color: ColorsUtil.snowWhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(containerBorderRadius),
                        topRight: Radius.circular(containerBorderRadius),
                      )),
                  curve: Curves.bounceOut,
                  duration: AnimationConstants.defaultAnimationDuration,
                  height: containerHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        if (state.userAuthState == UserAuthStates.start)
                          _buildStartStateUI(),
                        if (state.userAuthState ==
                            UserAuthStates.chooseLoginOrRegister)
                          _buildChooseLoginOrRegisterStateUI(),
                        if (state.userAuthState == UserAuthStates.login)
                          _buildLoginForm(),
                        if (state.userAuthState == UserAuthStates.registration)
                          _buildSignUpForm()
                      ],
                    ),
                  ),
                )),
            if (state.userAuthState != UserAuthStates.start)
              Positioned(
                  left: 10,
                  bottom: 10,
                  child: BackWidget(
                      onTap: () => widget.bloc.add(AuthEvent(
                          userAuthEvent:
                              state.userAuthState == UserAuthStates.login ||
                                      state.userAuthState ==
                                          UserAuthStates.registration
                                  ? UserAuthEvents.start
                                  : UserAuthEvents.initial)))),
            const Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: VersionWidget(),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildStartStateUI() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const AppLogoText(),
        const SizedBox(
          height: 40,
        ),
        MainElevatedButton(
          width: 200,
          height: 44,
          onPressed: () => widget.bloc.add(const AuthEvent(
            userAuthEvent: UserAuthEvents.start,
          )),
          title: "start".tr().toString(),
        ),
      ],
    );
  }

  Widget _buildChooseLoginOrRegisterStateUI() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const AppLogoText(),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 10,
        ),
        MainElevatedButton(
          width: 200,
          onPressed: () => widget.bloc.add(const AuthEvent(
            userAuthEvent: UserAuthEvents.login,
          )),
          title: "login".tr().toString(),
        ),
        const SizedBox(
          height: 20,
        ),
        MainElevatedButton(
          width: 200,
          onPressed: () => widget.bloc.add(const AuthEvent(
            userAuthEvent: UserAuthEvents.registration,
          )),
          title: "signup".tr().toString(),
        ),
      ],
    );
  }

  double get containerHeight => switch (widget.bloc.state.userAuthState) {
        UserAuthStates.start =>
          AnimatedContainerConstraints.containerHeightFirst,
        UserAuthStates.chooseLoginOrRegister =>
          AnimatedContainerConstraints.containerHeightSecond,
        _ => AnimatedContainerConstraints.containerHeightThird,
      };

  double get containerBorderRadius => switch (widget.bloc.state.userAuthState) {
        UserAuthStates.start =>
          AnimatedContainerConstraints.containerBorderRadiusFirst,
        _ => AnimatedContainerConstraints.containerBorderRadiusSecond,
      };

  Widget _buildLoginForm() {
    return LoginForm(
      onLoginPressed: widget.bloc.navigateToHome,
      emailTextController: _emailTextController!,
      passwordTextController: _passwordTextController!,
    );
  }

  Widget _buildSignUpForm() {
    return SignUpForm(
      onSignUpPressed: widget.bloc.navigateToHome,
      emailTextController: _emailTextController!,
      passwordTextController: _passwordTextController!,
      confirmPasswordTextController: _confirmPasswordTextController!,
    );
  }
}
