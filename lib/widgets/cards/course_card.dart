import 'package:course/components/importing_packages.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Color color;
  String courseDescription;
  String image;
  String title;
  String addTime;
  String cost;

  CourseCard({required this.color, required this.courseDescription,
    required this.image,
    required this.title,
    required this.addTime,
    required this.cost,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueHeight(297),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ConstColor.kGreyBE),
          borderRadius: BorderRadius.circular(getUniqueWidth(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: getUniqueHeight(194),
            child: Stack(children: [
              Image.asset(image),
              Positioned(
                right: getUniqueWidth(16),
                bottom: getUniqueHeight(8),
                child:  Chip(
                  label: Text("\$ $cost",
                  style: TextStyle(
                    fontSize: getUniqueWidth(14),
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),
                  backgroundColor: ConstColor.kBlue65,
                ),
              )
            ]),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  getUniqueWidth(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              getUniqueWidth(16),
              getUniqueWidth(14),
              getUniqueWidth(16),
              getUniqueWidth(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  addTime,
                  style: TextStyle(
                      color: ConstColor.kGreen5B,
                      fontSize: getUniqueWidth(12),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: getUniqueWidth(24),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Text(
                 courseDescription,
                  style: TextStyle(
                      fontSize: getUniqueWidth(14),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
