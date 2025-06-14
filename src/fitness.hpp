/**
 * @file fitness.hpp
 * @brief Библиотека для работы с фитнес-данными.
 */

#pragma once
#include <string>
#include <vector>

struct Exercise {
    std::string name;       ///< Название упражнения
    int duration;           ///< Время выполнения в минутах
    int sets;               ///< Количество подходов
};

enum class MuscleGroup {
    CHEST,
    BACK,
    LEGS,
    ARMS,
    CORE,
    FULL_BODY
};

/**
 * @brief Определяет группу мышц по названию упражнения.
 * @param exerciseName Название упражнения.
 * @return Соответствующая группа мышц.
 */
MuscleGroup getMuscleGroup(const std::string& exerciseName);

/**
 * @brief Вычисляет потраченные калории за упражнение.
 * @param exercise Упражнение.
 * @param weightKg Вес пользователя в килограммах.
 * @return Количество потраченных калорий.
 */
double calculateCaloriesBurned(const Exercise& exercise, double weightKg);

/**
 * @brief Обрабатывает список упражнений и выводит результаты.
 * @param exercises Вектор упражнений.
 * @param weightKg Вес пользователя.
 */
void processExercises(const std::vector<Exercise>& exercises, double weightKg);

/**
 * @brief Сохраняет тренировки в файл.
 * @param exercises Вектор упражнений.
 * @param filename Имя файла.
 */
void saveWorkoutToFile(const std::vector<Exercise>& exercises, const std::string& filename);

/**
 * @brief Загружает тренировки из файла.
 * @param filename Имя файла.
 * @return Вектор упражнений.
 */
std::vector<Exercise> loadWorkoutsFromFile(const std::string& filename);

/**
 * @brief Рассчитывает индекс массы тела (ИМТ).
 * @param weightKg Вес пользователя в килограммах.
 * @param heightM Рост пользователя в метрах.
 * @return Значение ИМТ.
 */
double calculateBMI(double weightKg, double heightM);

/**
 * @brief Выводит результат ИМТ и его интерпретацию.
 * @param bmi Значение ИМТ.
 */
void printBMIResult(double bmi);