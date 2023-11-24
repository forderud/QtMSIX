#include <QtWidgets>

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    QPushButton button("This is QtApp");
    button.show();

    return app.exec();
}
