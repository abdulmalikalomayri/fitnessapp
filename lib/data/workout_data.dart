import 'package:myflutterapp/models/exercise.dart';

import '../models/workout.dart';

class WrokoutData {

  List<Workout> workoutList = [

    Workout(
      name: "Upper Body",
      exercises: [
        Exercise(
          name: "Bicep Curls",
          weight: "10",
          reps: "10",
          sets: "3",
        )
      ]
    )
  ];

List<Workout> getWorkoutList() {
  return workoutList;
}

void addWorkout(String name) {
  workoutList.add(Workout(name: name, exercises: []));
}

void addExercise(String workoutName, String exerciseName, String weight, String reps, String sets) {
  
}
}
