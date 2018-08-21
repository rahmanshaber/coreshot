#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets x11extras

TARGET = coreshot
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11

# library for theme
unix:!macx: LIBS += -lcprime -lX11

FORMS += \
    coreshot.ui \
    coreshotdialog.ui

HEADERS += \
    coreshot.h \
    coreshotdialog.h \
    modefullscreen.h \
    modeselectarea.h \
    previewwidget.h \
    rectarea.h \
    screenwidget.h

SOURCES += \
    coreshot.cpp \
    coreshotdialog.cpp \
    main.cpp \
    modefullscreen.cpp \
    modeselectarea.cpp \
    previewwidget.cpp \
    rectarea.cpp \
    screenwidget.cpp

RESOURCES += \
    icons.qrc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


