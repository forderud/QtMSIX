Reproducer for issue with MSIX packaging of Qt desktop apps on Windows.

Qt issue: [How to package a Win32 desktop app in MSIX?](https://bugreports.qt.io/browse/QTBUG-97088)

Disclaimer: The author is new to MSIX packaging, so it might not be done according to "best practice".


## Steps to reproduce
Build and startup tests:
* Ensure that the `QT_ROOT_64` env. var. points to a 64bit Qt SDK installation.
* Run `OpenInVisualStudio.bat` to generate project files and open Visual Studio.
* Build all projects.
* Attempt to open "QtAppMSIX" project.
* Observe `The code execution cannot proceed because Qt6Widgets.dll was not found` error dialog.

MSIX packaging tests:
* Right click on the QtAppMSIX project and select "Publish" -> "Create App Packages..".
* In the "Select distribution method" screen, select "Sideloading" _without_ automatic updates.
* In the "Select signing method" screen, skip package signing.
* In the "Select and configure packages" screen, select "Never" for generating app bundle.
* Press "Create" to generate MSIX installer
* Use 7-zip or similar to inspect the generated MSIX file
* Observe that the MSIX file only contain `QtApp.exe`, whereas required Qt DLLs are missing. 
