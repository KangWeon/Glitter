cmake_minimum_required(VERSION 3.0)
project(sb7)

#option(GLFW_BUILD_DOCS OFF)
#option(GLFW_BUILD_EXAMPLES OFF)
#option(GLFW_BUILD_TESTS OFF)
#add_subdirectory(../../../Glitter/Vendor/glfw)

INCLUDE_DIRECTORIES(../../../Glitter/Vendor/glad/include/
                    ../../../Glitter/Vendor/glfw/include/
                    ../../../Glitter/Vendor/glm/
                    include)

set(PROJECT_HEADERS 
    include/object.h
    include/sb6mfile.h
    include/sb7.h
    include/sb7color.h
    include/sb7ext.h
    include/sb7ktx.h
    include/sb7textoverlay.h
    include/shader.h)

set(PROJECT_SOURCES
    src/glad.c
    src/sb7.cpp
    src/sb7color.cpp
    src/sb7ktx.cpp
    src/sb7object.cpp
    src/sb7shader.cpp
    src/sb7textoverlay.cpp)

add_library(${PROJECT_NAME} ${PROJECT_SOURCES} ${PROJECT_HEADERS})
target_link_libraries(${PROJECT_NAME} glfw)