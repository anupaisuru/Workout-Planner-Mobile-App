import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';

User user = User(
  userId: "12345",
  fullName: "John Doe",
  gender: "Male",
  address: "Colombo 3",
  age: 23,
  description: "Fitness enthusiast",

  exerciseList: [
    Exercise(
      id: 0,
      exerciseName: "Push-Ups",
      exerciseImgUrl: "assets/images/exercises/cobra.png",
      noOfMinutus: 15,
      isComplted: false,
    ),

    Exercise(
      id: 1,
      exerciseName: "Squats",
      exerciseImgUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutus: 20,
      isComplted: false,
    ),
  ],

  favExerciseList: [
    Exercise(
      id: 2,
      exerciseName: "Plank",
      exerciseImgUrl: "assets/images/exercises/dragging.png",
      noOfMinutus: 30,
      isComplted: false,
    ),

    Exercise(
      id: 3,
      exerciseName: "Jumping Jacks",
      exerciseImgUrl: "assets/images/exercises/hunch_back.png",
      noOfMinutus: 10,
      isComplted: false,
    ),
  ],

  equipmentList: [
    Equipment(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImageUrl: "assets/images/equipments/stationary-bike.png",
      noOfMinutus: 25,
      noOfCalories: 15,
      isHandOvered: false,
    ),

    Equipment(
      id: 6,
      equipmentName: "Pull-up Bar",
      equipmentDescription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImageUrl: "assets/images/equipments/treadmill.png",
      noOfMinutus: 40,
      noOfCalories: 20,
      isHandOvered: false,
    ),
  ],
  
  favEquipmentList: [
    Equipment(
      id: 7,
      equipmentName: "Medicine Ball",
      equipmentDescription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinutus: 35,
      noOfCalories: 18,
      isHandOvered: false,
    ),

    Equipment(
      id: 8,
      equipmentName: "Bench",
      equipmentDescription:
          "A stable surface for various strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinutus: 55,
      noOfCalories: 28,
      isHandOvered: false,
    ),
  ],
);
