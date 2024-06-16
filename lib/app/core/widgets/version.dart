import 'package:flutter/material.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'V 1.0.0',
      style: TextStyle(fontFamily: 'Comfortaa', fontSize: 16),
    );
  }
}
