import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutus;
  final double noOfCalories;
  const EquipmentCard({
    super.key,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinutus,
    required this.noOfCalories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kCardBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipmentName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset(equipmentImageUrl, fit: BoxFit.cover, width: 100),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${noOfMinutus.toString()} of workout",
                      style: TextStyle(fontSize: 17, color: kMainPinkColor),
                    ),
                    Text(
                      "${noOfCalories.toString()} of calories",
                      style: TextStyle(fontSize: 17, color: kMainPinkColor),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              equipmentDescription,
              style: TextStyle(fontSize: 17, color: kMainColor),
            ),
          ],
        ),
      ),
    );
  }
}
