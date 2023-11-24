@echo off

:: Add Qt and CMake to PATH
if defined QT_ROOT_64 (
set "PATH=%QT_ROOT_64%\bin;%PATH%"
)

set PATH=%PATH%;C:\Program Files\Cmake\bin

:: Initialize Visual Studio projects
cmake.exe -A x64 -T v142 -DCMAKE_CONFIGURATION_TYPES=Release;Debug . || exit /B 1

:: Open solution
start QtApp.sln

::pause
