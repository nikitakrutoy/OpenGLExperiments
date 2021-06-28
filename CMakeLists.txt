cmake_minimum_required(VERSION 3.17)
project(TestOpenGLProject)

set(CMAKE_CXX_STANDARD 14)

find_path(libglm glm.h)
find_path(stb stb)


link_directories(
        /usr/local/lib
)

find_library(libglfw glfw)
find_library(libGLEW GLEW)
find_library(OpenGLFramework OpenGL)
find_library(CocoaFramework Cocoa)
find_library(IOKitFramework IOKit)

find_package(assimp)
find_library(
        assimp_LIBRARIES
        NAMES assimp
)

include_directories(
        ${libglm}
        ${stb}
        ${assimp}
        ./libs/
)


set(LINK_LIBRARIES
        ${libglfw}
        ${libGLEW}
        ${OpenGLFramework}
        ${CocoaFramework} ${IOKitFramework}
        ${assimp_LIBRARIES}
        "Core"
        )

if(APPLE)
    find_library(CocoaFramework Cocoa)
    find_library(IOKitFramework IOKit)
    list(APPEND LINK_LIBRARIES ${CocoaFramework} ${IOKitFramework})

    message(STATUS "CMake ${CMAKE_VERSION}")
endif()

file( GLOB CORE_SOURCES ${CMAKE_SOURCE_DIR} ./libs/core/*.cpp )

message(${CMAKE_BINARY_DIR} ${RUNTIME_OUTPUT_DIRECTORY})
add_library(Core STATIC ${CORE_SOURCES})

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build/lib)


file( GLOB APP_SOURCES RELATIVE ${CMAKE_SOURCE_DIR} app/*.cpp )
foreach( testsourcefile ${APP_SOURCES} )
    # I used a simple string replace, to cut off .cpp.
    get_filename_component(filename ${testsourcefile} NAME)
    string( REPLACE ".cpp" "" testname ${filename})
    add_executable( ${testname} ${testsourcefile} )
    # Make sure YourLib is linked to each app
    target_link_libraries( ${testname} LINK_PUBLIC ${LINK_LIBRARIES})
endforeach( testsourcefile ${APP_SOURCES} )
