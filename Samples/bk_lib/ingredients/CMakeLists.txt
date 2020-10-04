cmake_minimum_required(VERSION 3.0)
project(ingredients)

INCLUDE_DIRECTORIES(../../../Glitter/Vendor/glad/include/
                    ../../../Glitter/Vendor/glfw/include/
                    ../../../Glitter/Vendor/glm/
                    )

set(PROJECT_HEADERS 
    include/aabb.h
    include/drawable.h
    include/grid.h
    include/ogl4slc3rd_utils.h
    include/scene.h
    include/sphere.h
    include/teapotpatch.h
    include/cookbookogl.h
    include/glslprogram.h
    include/objmesh.h
    include/plane.h
    include/scenerunner.h
    include/teapot.h
    include/torus.h
    include/cube.h
    include/glutils.h
    include/ogl4slc3rd_texture.h
    include/random.h
    include/skybox.h
    include/teapotdata.h
    include/trianglemesh.h)

set(PROJECT_SOURCES
    src/cube.cpp
    src/glslprogram.cpp
    src/grid.cpp
    src/plane.cpp
    src/sphere.cpp
    src/teapot.cpp
    src/texture.cpp
    src/trianglemesh.cpp
    src/glad.c
    src/glutils.cpp
    src/objmesh.cpp
    src/skybox.cpp
    src/stbimpl.cpp
    src/teapotpatch.cpp
    src/torus.cpp)

add_library(${PROJECT_NAME} ${PROJECT_SOURCES} ${PROJECT_HEADERS})
target_link_libraries(${PROJECT_NAME} ${GLFW_LIBRARIES})