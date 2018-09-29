#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets x11extras

TARGET = coreshot
TEMPLATE = app

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

# Disable warnings, enable threading support and c++11
CONFIG += thread silent build_all c++11

# Disable Debug on Release
# CONFIG(release):DEFINES += QT_NO_DEBUG_OUTPUT

# Build location

BUILD_PREFIX = $$(CA_BUILD_DIR)

isEmpty( BUILD_PREFIX ) {
        BUILD_PREFIX = ./build
}

MOC_DIR       = $$BUILD_PREFIX/moc-qt5
OBJECTS_DIR   = $$BUILD_PREFIX/obj-qt5
RCC_DIR	      = $$BUILD_PREFIX/qrc-qt5
UI_DIR        = $$BUILD_PREFIX/uic-qt5


unix {
        isEmpty(PREFIX) {
                PREFIX = /usr
        }
        BINDIR = $$PREFIX/bin

        target.path = $$BINDIR

        desktop.path = $$PREFIX/share/applications/
        desktop.files = "coreshot.desktop"

        icons.path = $$PREFIX/share/coreapps/icons/
        icons.files = icons/coreshot.svg

        INSTALLS += target icons desktop
}

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += "HAVE_POSIX_OPENPT"


