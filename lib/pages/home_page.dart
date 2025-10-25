import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/pages/equipment_details_page.dart';
import 'package:workout_planner/pages/exercise_details_page.dart';
import 'package:workout_planner/widget/exercise_card.dart';
import 'package:workout_planner/widget/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //date and time fomatters
  final DateFormat formatter = DateFormat("EEEE,MMMM");
  final DateFormat dayFormat = DateFormat("dd");

  //user data
  final userData = user;

  //exercise and equipment data
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),
                Text(
                  userData.fullName,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),
                SizedBox(height: 10),
                ProgressCard(
                  progressValue: userData.calculateTotalCaloriesBurned(),
                  total: 100,
                ),
                SizedBox(height: 15),
                Text(
                  "Today's Activity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: 'Warmup',
                              exerciseDescription:
                                  'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.',
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: "Warmup",
                        imageUrl: "assets/images/exercises/cobra.png",
                        description: "see more..",
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentDetailsPage(
                              equipmentTitle: "Equipment",
                              equipmentDescription:
                                  "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.",
                              equipmentList: equipmentList,
                            ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: "Equipment",
                        imageUrl: "assets/images/equipments/dumbbell.png",
                        description: "see more..",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Exercise",
                              exerciseDescription:
                                  "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web developme",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: "Exercise",
                        imageUrl: "assets/images/exercises/downward-facing.png",
                        description: "see more..",
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Stretching",
                              exerciseDescription:
                                  "Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web developme",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: "Stretching",
                        imageUrl: "assets/images/exercises/hunch_back.png",
                        description: "see more..",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
