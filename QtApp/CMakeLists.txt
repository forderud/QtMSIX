find_package(Qt6 REQUIRED COMPONENTS Widgets)
qt_standard_project_setup()

qt_add_executable(QtApp
    main.cpp
)

target_link_libraries(QtApp PRIVATE Qt6::Widgets)

set_target_properties(QtApp PROPERTIES WIN32_EXECUTABLE ON)
