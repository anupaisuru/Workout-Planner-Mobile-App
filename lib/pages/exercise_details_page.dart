import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widget/exercise_card.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> exerciseList;

  const ExerciseDetailsPage({
    super.key,
    required this.exerciseTitle,
    required this.exerciseDescription,
    required this.exerciseList,
  });

  @override
  State<ExerciseDetailsPage> createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
  //date and time fomatters
  final DateFormat formatter = DateFormat("EEEE,MMMM");
  final DateFormat dayFormat = DateFormat("dd");

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Column(
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
              widget.exerciseTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kMainColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                widget.exerciseDescription,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kMainColor,
                ),
              ),
              SizedBox(height: 15),

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                ),
                itemCount: widget.exerciseList.length,
                itemBuilder: (context, index) {
                  Exercise exercise = widget.exerciseList[index];
                  return ExerciseCard(
                    title: exercise.exerciseName,
                    imageUrl: exercise.exerciseImgUrl,
                    description: "${exercise.noOfMinutus} of workout",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
