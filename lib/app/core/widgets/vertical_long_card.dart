import 'package:flutter/material.dart';
import 'package:plant_app/app/utils/colors_util.dart';

class VerticalLongCard extends StatelessWidget {
  const VerticalLongCard({
    required this.imagePath,
    required this.title,
    this.height = 200,
    this.width = 150,
    super.key,
  });

  final double height;
  final double width;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: height,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
        children: [

          Positioned(
            top: 0,
            child:ClipRRect(
              borderRadius:  BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(child: Container(
            height: height,
            width: width,
            decoration:  BoxDecoration(
                borderRadius:  BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
              )
            ),
          )),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 13,
                color: ColorsUtil.snowWhiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
