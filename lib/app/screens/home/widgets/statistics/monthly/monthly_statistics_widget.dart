import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/app/screens/home/widgets/statistics/monthly/statistics_circle.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class MonthlyStatisticsWidget extends StatelessWidget {
  const MonthlyStatisticsWidget({
    super.key,
    required this.added,
    required this.sold,
    required this.lost,
  });

  final int added;
  final int sold;
  final int lost;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'thisMonth'.tr().toString(),
          style: const TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: ColorsUtil.greyText,
          ),
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StatisticsCircle(
              number: added,
              color: ColorsUtil.lightGreen,
              label: 'added',
            ),
            StatisticsCircle(
              number: sold,
              color: ColorsUtil.violetColor,
              label: 'sold',
            ),
            StatisticsCircle(
              number: lost,
              color: ColorsUtil.lightBrown,
              label: 'lost',
            )
          ],
        ),
      ],
    );
  }
}
