find_package(Qt6 REQUIRED COMPONENTS Widgets)
qt_standard_project_setup()

qt_add_executable(QtApp
    main.cpp
)

target_link_libraries(QtApp PRIVATE Qt6::Widgets)

# Hide console window
set_target_properties(QtApp PROPERTIES WIN32_EXECUTABLE ON)

# Hardcode Visual Studio project GUID to match MSIX project reference
set(QtApp_GUID_CMAKE "46FE146D-48F8-4761-8EB7-D79691BCBEDE" CACHE INTERNAL "Project GUID")

add_custom_command(TARGET QtApp POST_BUILD
                   COMMAND "${Qt6_DIR}/../../../bin/windeployqt.exe" ARGS "$(TargetPath)"
                   COMMENT "Copying Qt dependencies")
