QT       += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/main.cpp \
    src/mainwindow.cpp \
    src/mode.cpp \
    src/read_class.cpp \
    src/static_text.cpp \
    src/text_interface.cpp


HEADERS += \
    src/mainwindow.h \
    src/mode.h \
    src/read_class.h \
    src/ui_mainwindow.h \
    src/ui_mode.h


FORMS += \
    mainwindow.ui \
    mode.ui


VERSION = 1.0.0.0
QMAKE_TARGET_COMPANY = Group of companies Energoskan
QMAKE_TARGET_PRODUCT = On-board computer programm configurator
QMAKE_TARGET_DESCRIPTION = Configurator software
QMAKE_TARGET_COPYRIGHT = Group of companies Energoskan
RC_ICONS = "icon.ico"

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
