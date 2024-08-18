import 'package:flutter/material.dart';
import 'package:plant_app/app/core/widgets/vertical_long_card.dart';
import 'package:plant_app/app/utils/images_factory.dart';

class CollectionsCarouselWidget extends StatelessWidget {
  const CollectionsCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemExtent: 160,
          itemBuilder: (context, index) {
            return VerticalLongCard(
                imagePath: ImagesFactory.plant,
                title: 'This is a title and long long text ever',

            );
          }),
    );
  }
}
