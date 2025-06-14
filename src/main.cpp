#include "fitness.hpp"
#include <vector>
#include <iostream>
#include <windows.h>

int main() {
        // Устанавливаем вывод консоли в UTF-8
    SetConsoleOutputCP(CP_UTF8);

    std::vector<Exercise> currentWorkout;

    // Ввод данных о пользователе
    double weightKg = 0;
    double heightM = 0;

    std::cout << "Введите ваш вес (кг): ";
    std::cin >> weightKg;
    std::cout << "Введите ваш рост (м): ";
    std::cin >> heightM;

    double bmi = calculateBMI(weightKg, heightM);
    printBMIResult(bmi);

    while (true) {
        std::cout << "\n--- Фитнес-дневник ---\n";
        std::cout << "1. Добавить упражнение\n";
        std::cout << "2. Показать текущую тренировку\n";
        std::cout << "3. Сохранить тренировку\n";
        std::cout << "4. Загрузить предыдущие тренировки\n";
        std::cout << "5. Выход\n";
        std::cout << "Выберите действие: ";

        int choice;
        std::cin >> choice;

        if (choice == 1) {
            Exercise ex;
            std::cin.ignore();
            std::cout << "Введите название упражнения: ";
            std::getline(std::cin, ex.name);
            std::cout << "Время (мин): ";
            std::cin >> ex.duration;
            std::cout << "Количество подходов: ";
            std::cin >> ex.sets;
            currentWorkout.push_back(ex);
        } else if (choice == 2) {
            processExercises(currentWorkout, weightKg);
        } else if (choice == 3) {
            saveWorkoutToFile(currentWorkout, "workouts.txt");
            std::cout << "Тренировка сохранена!\n";
        } else if (choice == 4) {
            std::vector<Exercise> history = loadWorkoutsFromFile("workouts.txt");
            std::cout << "Загружены прошлые тренировки:\n";
            processExercises(history, weightKg);
        } else if (choice == 5) {
            break;
        } else {
            std::cout << "Неверный выбор!\n";
        }
    }

    return 0;
}