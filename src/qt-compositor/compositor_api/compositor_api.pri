INCLUDEPATH += $$PWD

HEADERS += \
    $$PWD/waylandcompositor.h \
    $$PWD/waylandsurface.h

SOURCES += \
    $$PWD/waylandcompositor.cpp \
    $$PWD/waylandsurface.cpp

contains(QT, declarative) {
    SOURCES += $$PWD/waylandsurfaceitem.cpp
    HEADERS += $$PWD/waylandsurfaceitem.h

   DEFINES += QT_COMPOSITOR_DECLARATIVE
}

!isEmpty(QT.core.MAJOR_VERSION):greaterThan(QT.core.MAJOR_VERSION, 4) {
    QT += core-private
    contains(QT, declarative):QT += declarative-private opengl-private gui-private
}
