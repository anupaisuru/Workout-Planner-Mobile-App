import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totlaExercisesCompleted = 0;
  int totlaEquipmentHandedOver = 0;

  final List<Exercise> exerciseList;
  final List<Exercise> favExerciseList;

  final List<Equipment> equipmentList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.favExerciseList,
    required this.equipmentList,
    required this.favEquipmentList,
  });

  //exercise methods
  //add exercise
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  //romve exercise
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  //add favorite exercise
  void addFavExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  //remove favourite exercise
  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }

  //equipment methods
  //add equipment
  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
  }

  //remove equipment
  void removeEquipment(Equipment equipment) {
    equipmentList.remove(equipment);
  }

  //add fav equipment
  void addFavEquipment(Equipment equipment) {
    favEquipmentList.add(equipment);
  }

  //remove fav equipment
  void removeFavEquipment(Equipment equipment) {
    favEquipmentList.remove(equipment);
  }

  // calculate total minitus spend
  int calculateTotalMinitus() {
    int totalMinitusSpend = 0;

    for (var exercise in exerciseList) {
      totalMinitusSpend += exercise.noOfMinutus;
    }

    for (var equipment in equipmentList) {
      totalMinitusSpend += equipment.noOfMinutus;
    }

    return totalMinitusSpend;
  }

  //mark as complted method
  void markExerciseAsComplted(int exerciseId) {
    final exercise = exerciseList.firstWhere(
      (exercise) => exercise.id == exerciseId,
    );
    exercise.isComplted = true;
    //rmove exercise
    removeExercise(exercise);

    totlaExercisesCompleted++;
  }

  // mark as hand overed
  void markEquipmentAsHandOvered(final equipmentId) {
    final equipment = equipmentList.firstWhere(
      (equipment) => equipment.id == equipmentId,
    );

    equipment.isHandOvered = true;
    //remove equipment
    removeEquipment(equipment);
    totlaEquipmentHandedOver++;
  }

  //method to calculate number of calories burned
  double calculateTotalCaloriesBurned() {
    double totalCaloriesBurned = 0;

    for (var equipment in equipmentList) {
      totalCaloriesBurned += equipment.noOfCalories;
    }

    //convert in to value between 0 and 1
    if (totalCaloriesBurned > 0 && totalCaloriesBurned <= 10) {
      totalCaloriesBurned = totalCaloriesBurned / 10;
    }

    if (totalCaloriesBurned > 10 && totalCaloriesBurned <= 100) {
      totalCaloriesBurned = totalCaloriesBurned / 100;
    }

    if (totalCaloriesBurned > 100 && totalCaloriesBurned <= 1000) {
      totalCaloriesBurned = totalCaloriesBurned / 1000;
    }

    return totalCaloriesBurned;
  }
}
