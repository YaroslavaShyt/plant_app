import 'package:flutter/material.dart';
import 'package:plant_app/app/screens/home/widgets/statistics/carousel_indicator.dart';
import 'package:plant_app/app/screens/home/widgets/statistics/monthly/monthly_statistics_widget.dart';

class StatisticsCarouselWidget extends StatefulWidget {
  const StatisticsCarouselWidget({super.key});

  @override
  State<StatisticsCarouselWidget> createState() =>
      _StatisticsCarouselWidgetState();
}

class _StatisticsCarouselWidgetState extends State<StatisticsCarouselWidget> {
  int _selectedPageIndex = 0;
  final PageController _controller = PageController();

  void _onPageChanged(int newIndex) {
    setState(() {
      _selectedPageIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            controller: _controller,
            onPageChanged: _onPageChanged,
            children: [
              MonthlyStatisticsWidget(
                added: 7,
                sold: 2,
                lost: 0,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselIndicator(
                isSelected: true),
            CarouselIndicator(
                isSelected: true),
            CarouselIndicator(
                isSelected: true)
          ],
        )
      ],
    );
  }
}
