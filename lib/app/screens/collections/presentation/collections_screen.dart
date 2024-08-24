import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/main_text_field.dart';
import 'package:plant_app/app/screens/collections/presentation/widgets/collections_apbar.dart';

class CollectionsScreen extends StatefulWidget {
  const CollectionsScreen({super.key});

  @override
  State<CollectionsScreen> createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CollectionsAppbar(),
              const SizedBox(
                height: 20,
              ),
              MainTextField(
                  hintText: "search".tr().toString(),
                  height: 46,
                  borderRadius: 10,
                  controller: _searchController)
            ],
          )),
    );
  }
}
