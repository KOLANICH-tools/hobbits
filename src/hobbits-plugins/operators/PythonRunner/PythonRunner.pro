#-------------------------------------------------
#
# Project created by QtCreator 2019-12-12T17:39:34.229Z
#
#-------------------------------------------------

requires(defined(HOBBITS_PYPATH, var))

QT       += widgets

QT       -= gui

TARGET = PythonRunner
TEMPLATE = lib

DEFINES += PYTHONRUNNER_LIBRARY

CONFIG += c++11 plugin
CONFIG -= debug_and_release_target

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES +=         pythonrunner.cpp \
    pythonrunnerform.cpp \
    pythonsyntaxhighlighter.cpp

HEADERS +=         pythonrunner.h \
    pythonrunnerform.h \
    pythonsyntaxhighlighter.h

FORMS +=        \
    pythonrunnerform.ui

LIBS += -L$$OUT_PWD/../../../hobbits-core/ -lhobbits-core
LIBS += -L$$OUT_PWD/../../../hobbits-widgets/ -lhobbits-widgets
INCLUDEPATH += $$PWD/../../../hobbits-core $$PWD/../../../hobbits-widgets
DEPENDPATH += $$PWD/../../../hobbits-core $$PWD/../../../hobbits-widgets

LIBS += -L$$OUT_PWD/../../../hobbits-python/ -lhobbits-python
INCLUDEPATH += $$PWD/../../../hobbits-python
DEPENDPATH += $$PWD/../../../hobbits-python

unix:!mac {
    QMAKE_LFLAGS_RPATH=
    QMAKE_LFLAGS += "-Wl,-rpath,\'\$$ORIGIN/../../lib:\$$ORIGIN\'"
}

mac {
    QMAKE_LFLAGS_RPATH=
    QMAKE_LFLAGS += "-Wl,-rpath,\'@executable_path/../Frameworks\'"
}

unix {
    target.path = $$(HOME)/.local/share/hobbits/plugins/operators
    INSTALLS += target
}

DISTFILES +=

RESOURCES +=
