TARGET  = QtCompositor
QT = core gui-private

contains(QT_CONFIG, opengl):MODULE_DEFINES = QT_COMPOSITOR_WAYLAND_GL

load(qt_module_config)

include(compositor.pri)

