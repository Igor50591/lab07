cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(solver)

add_executable(solver ${CMAKE_CURRENT_SOURCE_DIR}/equation.cpp)

include_directories(
                    ${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib
                    ${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib
)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib formatter_ex)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib solver_lib)
target_link_libraries(solver
        formatter_ex
        solver_lib
)

