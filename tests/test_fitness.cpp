#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "fitness.hpp"

TEST_CASE("Test getMuscleGroup") {
    CHECK(getMuscleGroup("push-ups") == MuscleGroup::CHEST);
    CHECK(getMuscleGroup("unknown") == MuscleGroup::FULL_BODY);
}

TEST_CASE("Test calculateCaloriesBurned") {
    Exercise e1{"running", 10, 2};
    Exercise e2{"plank", 5, 3};

    CHECK(calculateCaloriesBurned(e1, 70) == doctest::Approx(238.0).epsilon(0.1));
    CHECK(calculateCaloriesBurned(e2, 70) == doctest::Approx(73.5).epsilon(0.1));
}

TEST_CASE("Test BMI calculation") {
    CHECK(calculateBMI(70, 1.75) == doctest::Approx(22.86).epsilon(0.01));
    CHECK(calculateBMI(50, 1.6) == doctest::Approx(19.53).epsilon(0.01));
}

TEST_CASE("Test save and load workout") {
    std::vector<Exercise> input = {{"push-ups", 10, 3}, {"squats", 15, 2}};
    saveWorkoutToFile(input, "test_workouts.txt");

    std::vector<Exercise> output = loadWorkoutsFromFile("test_workouts.txt");

    CHECK(output.size() == 2);
    CHECK(output[0].name == "push-ups");
    CHECK(output[0].duration == 10);
    CHECK(output[0].sets == 3);
}