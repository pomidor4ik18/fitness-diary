cmake_minimum_required(VERSION 3.14)
project(FitnessDiary)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${PROJECT_SOURCE_DIR}/src)

add_executable(fitness-diary src/main.cpp src/fitness.cpp)

enable_testing()
add_subdirectory(tests)