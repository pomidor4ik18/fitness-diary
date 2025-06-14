#include "fitness.hpp"
#include <iostream>
#include <unordered_map>
#include <fstream>

MuscleGroup getMuscleGroup(const std::string& exerciseName) {
    static const std::unordered_map<std::string, MuscleGroup> mapping = {
        {"push-ups", MuscleGroup::CHEST},
        {"pull-ups", MuscleGroup::BACK},
        {"squats", MuscleGroup::LEGS},
        {"bench press", MuscleGroup::CHEST},
        {"deadlift", MuscleGroup::BACK},
        {"lunges", MuscleGroup::LEGS},
        {"bicep curls", MuscleGroup::ARMS},
        {"sit-ups", MuscleGroup::CORE},
        {"plank", MuscleGroup::CORE},
        {"running", MuscleGroup::FULL_BODY}
    };

    auto it = mapping.find(exerciseName);
    return (it != mapping.end()) ? it->second : MuscleGroup::FULL_BODY;
}

double calculateCaloriesBurned(const Exercise& exercise, double weightKg) {
    double caloriesPerMinutePerKg = 0.1;

    if (exercise.name == "running") {
        caloriesPerMinutePerKg = 0.17;
    } else if (exercise.name == "plank") {
        caloriesPerMinutePerKg = 0.07;
    } else if (exercise.name == "push-ups") {
        caloriesPerMinutePerKg = 0.1;
    }

    return caloriesPerMinutePerKg * weightKg * exercise.duration * exercise.sets;
}

void processExercises(const std::vector<Exercise>& exercises, double weightKg) {
    double totalCalories = 0;
    int totalTime = 0;

    for (const auto& ex : exercises) {
        MuscleGroup group = getMuscleGroup(ex.name);
        double calories = calculateCaloriesBurned(ex, weightKg);

        totalCalories += calories;
        totalTime += ex.duration;

        std::cout << "\nУпражнение: " << ex.name << "\n";
        std::cout << "Время: " << ex.duration << " мин\n";
        std::cout << "Подходы: " << ex.sets << "\n";
        std::cout << "Потрачено калорий: " << calories << "\n";

        switch (group) {
            case MuscleGroup::CHEST:     std::cout << "Группа мышц: Грудь\n"; break;
            case MuscleGroup::BACK:      std::cout << "Группа мышц: Спина\n"; break;
            case MuscleGroup::LEGS:      std::cout << "Группа мышц: Ноги\n"; break;
            case MuscleGroup::ARMS:      std::cout << "Группа мышц: Руки\n"; break;
            case MuscleGroup::CORE:      std::cout << "Группа мышц: Пресс\n"; break;
            case MuscleGroup::FULL_BODY: std::cout << "Группа мышц: Полный корпус\n"; break;
        }
        std::cout << "----------------------\n";
    }

    std::cout << "\n📊 Общая статистика:\n";
    std::cout << "Общее время тренировки: " << totalTime << " мин\n";
    std::cout << "Общее количество калорий: " << totalCalories << "\n";
}

void saveWorkoutToFile(const std::vector<Exercise>& exercises, const std::string& filename) {
    std::ofstream out(filename, std::ios::app);
    for (const auto& ex : exercises) {
        out << ex.name << " " << ex.duration << " " << ex.sets << "\n";
    }
}

std::vector<Exercise> loadWorkoutsFromFile(const std::string& filename) {
    std::ifstream in(filename);
    std::vector<Exercise> result;
    std::string line;

    while (std::getline(in, line)) {
        Exercise ex;
        size_t firstSpace = line.find(' ');
        size_t secondSpace = line.find(' ', firstSpace + 1);

        if (firstSpace != std::string::npos && secondSpace != std::string::npos) {
            ex.name = line.substr(0, firstSpace);
            ex.duration = std::stoi(line.substr(firstSpace + 1, secondSpace - firstSpace - 1));
            ex.sets = std::stoi(line.substr(secondSpace + 1));
            result.push_back(ex);
        }
    }

    return result;
}

double calculateBMI(double weightKg, double heightM) {
    return weightKg / (heightM * heightM);
}

void printBMIResult(double bmi) {
    std::cout << "\n📊 Ваш ИМТ: " << bmi << "\n";

    if (bmi < 18.5) {
        std::cout << "Статус: Недостаток массы тела\n";
    } else if (bmi < 25) {
        std::cout << "Статус: Нормальная масса тела\n";
    } else if (bmi < 30) {
        std::cout << "Статус: Избыточная масса тела\n";
    } else {
        std::cout << "Статус: Ожирение\n";
    }
}