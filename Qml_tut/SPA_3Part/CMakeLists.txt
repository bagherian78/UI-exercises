cmake_minimum_required(VERSION 3.16)

project(SPA_3Part VERSION 0.1 LANGUAGES CXX)
set(CMAKE_ATUORCC ON)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appSPA_3Part
    main.cpp
)

qt_add_qml_module(appSPA_3Part
    URI SPA_3Part
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES resources.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSPA_3Part PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSPA_3Part
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSPA_3Part
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appSPA_3Part
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
