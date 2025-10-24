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
  void addExercise(Exercise exercise){
    exerciseList.add(exercise);
  }

  //romve exercise
  void removeExercise(Exercise exercise){
    exerciseList.remove(exercise);
  }

  //add favorite exercise
  void addFavExercise(Exercise exercise){
    favExerciseList.add(exercise);
  }

  //remove favourite exercise
  void removeFavExercise(Exercise exercise){
    favExerciseList.remove(exercise);
  }

  //equipment methods
  //add equipment
  void addEquipment(Equipment equipment){
    equipmentList.add(equipment);
  }

  //remove equipment
  void removeEquipment(Equipment equipment){
    equipmentList.remove(equipment);
  }

  //add fav equipment
  void addFavEquipment(Equipment equipment){
    favEquipmentList.add(equipment);
  }

  //remove fav equipment
  void removeFavEquipment(Equipment equipment){
    favEquipmentList.remove(equipment);
  }

}
