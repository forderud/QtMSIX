cmake_minimum_required(VERSION 3.16)

project(QtApp VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(QtApp)

include_external_msproject(QtAppMSIX ${CMAKE_CURRENT_SOURCE_DIR}/QtAppMSIX/QtAppMSIX.wapproj PLATFORM x64)
add_dependencies(QtAppMSIX QtApp)
