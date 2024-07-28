import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/core/constants/constants.dart';
import 'package:plant_app/app/core/widgets/app_logo_text.dart';
import 'package:plant_app/app/core/widgets/main_elevated_button.dart';
import 'package:plant_app/app/core/widgets/version.dart';
import 'package:plant_app/app/screens/authentication/presentation/widgets/animated_container_constraints.dart';
import 'package:plant_app/app/utils/colors_util.dart';
import 'package:plant_app/app/utils/images_factory.dart';

enum _AuthSteps { initial, password, createPassword }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  double _containerHeight = AnimatedContainerConstraints.containerHeightFirst;
  double _containerBorderRadius =
      AnimatedContainerConstraints.containerBorderRadiusFirst;
  _AuthSteps _step = _AuthSteps.initial;

  @override
  void initState() {
    super.initState();
  }

  void _onStartPressed() {
    setState(() {
      _containerHeight = AnimatedContainerConstraints.containerHeightSecond;
      _containerBorderRadius =
          AnimatedContainerConstraints.containerBorderRadiusSecond;
      _step = _AuthSteps.password;
    });
  }

  void _onStartWithPasswordPressed() {
    setState(() {
      _containerHeight = AnimatedContainerConstraints.containerHeightThird;
      _containerBorderRadius =
          AnimatedContainerConstraints.containerBorderRadiusThird;
      _step = _AuthSteps.createPassword;
    });
  }

  void _onPressed() {
    _step == _AuthSteps.initial
        ? _onStartPressed()
        : _step == _AuthSteps.password
            ? _onStartWithPasswordPressed()
            : _onStartPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                    topLeft: Radius.circular(_containerBorderRadius),
                    topRight: Radius.circular(_containerBorderRadius),
                  )),
              curve: Curves.bounceOut,
              duration: AnimationConstants.defaultAnimationDuration,
              height: _containerHeight,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const AppLogoText(),
                      const SizedBox(
                        height: 40,
                      ),
                      if (_step == _AuthSteps.initial)
                        MainElevatedButton(
                          width: 150,
                          height: 44,
                          onPressed: _onPressed,
                          title: "start".tr().toString(),
                        ),
                      if (_step == _AuthSteps.password) ...[
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 48),
                          child: _buildTexts(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MainElevatedButton(
                          width: 190,
                          onPressed: _onPressed,
                          title: "wantToCreatePassword".tr().toString(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MainElevatedButton(
                          width: 190,
                          onPressed: _onPressed,
                          title: "startWithoutPassword".tr().toString(),
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ),
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
      ),
    );
  }

  Widget _buildTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("noInternetRequiredSentence".tr().toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 14,
                color: ColorsUtil.brownText)),
        const SizedBox(
          height: 10,
        ),
        Text("createPasswordOpportunitySentence".tr().toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 14,
                color: ColorsUtil.brownText)),
      ],
    );
  }
}
