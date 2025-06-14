# 🏋️‍♂️ Фитнес-дневник

CLI-приложение для учёта тренировок: подсчёт калорий, определение группы мышц, расчёт ИМТ, сохранение данных.

## Возможности

- Ввод роста и веса
- Расчёт ИМТ
- Подсчёт калорий с учётом веса
- Сохранение и загрузка упражнений
- Отображение общей статистики
- Тестирование через `doctest`
- Документация в коде
- Поддержка CMake

## Функции программы

| Функция | Описание |
|--------|----------|
| `getMuscleGroup(...)` | Определяет группу мышц по названию упражнения |
| `calculateCaloriesBurned(...)` | Считает калории, потраченные на упражнение |
| `processExercises(...)` | Обрабатывает список упражнений и выводит статистику |
| `saveWorkoutToFile(...)` | Сохраняет данные тренировки в файл |
| `loadWorkoutsFromFile(...)` | Загружает данные из файла |
| `calculateBMI(...)` | Рассчитывает индекс массы тела |
| `printBMIResult(...)` | Выводит результат ИМТ |

## Установка

```bash
git clone https://github.com/pomidor4ik18/fitness-diary.git 
cd fitness-diary
mkdir build && cd build
cmake ..
make
./fitness-diary
