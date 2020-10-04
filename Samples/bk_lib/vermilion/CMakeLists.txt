cmake_minimum_required(VERSION 3.0)
project(vermilion)

#option(GLFW_BUILD_DOCS OFF)
#option(GLFW_BUILD_EXAMPLES OFF)
#option(GLFW_BUILD_TESTS OFF)
#add_subdirectory(../../../Glitter/Vendor/glfw)

INCLUDE_DIRECTORIES(../../../Glitter/Vendor/glad/include/
                    ../../../Glitter/Vendor/glfw/include/
                    ../../../Glitter/Vendor/glm/
                    include)

set(PROJECT_HEADERS 
    include/CheckError.h
    include/LoadShaders.h
    include/vapp.h
    include/vbm.h
    include/vermilion.h
    include/vgl.h
    include/vutils.h
    include/Shapes/Cube.h
    include/Shapes/Teapot.h)

set(PROJECT_SOURCES
    src/LoadShaders.cpp
    src/glad.c
    src/loadtexture.cpp
    src/targa.cpp
    src/vbm.cpp
    src/vdds.cpp
    src/vermilion.cpp)

add_library(${PROJECT_NAME} ${PROJECT_SOURCES} ${PROJECT_HEADERS})
target_link_libraries(${PROJECT_NAME} glfw)