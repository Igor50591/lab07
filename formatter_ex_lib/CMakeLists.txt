cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(formatter_ex)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib formatter)

add_library(formatter_ex STATIC formatter_ex.cpp)

target_link_libraries(formatter_ex formatter)
