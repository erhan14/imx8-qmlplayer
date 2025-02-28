TEMPLATE = app

QT += qml quick widgets

QT_CONFIG -= no-pkg-config
CONFIG += link_pkgconfig debug
PKGCONFIG = \
    gstreamer-1.0 \
    gstreamer-video-1.0 \

QML_IMPORT_PATH += /lib/x86_64-linux-gnu/gstreamer-1.0/

DEFINES += GST_USE_UNSTABLE_API

INCLUDEPATH += ../lib

SOURCES += main.cpp \
    qmlplayer.cpp \
    setplaying.cpp

RESOURCES += qmlsink.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

HEADERS += \
    qmlplayer.h \
    setplaying.h

target.path = /root/qmlplayer
INSTALLS += target
