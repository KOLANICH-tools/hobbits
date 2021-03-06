#-------------------------------------------------
#
# Project created by QtCreator 2020-09-22T10:36:17
#
#-------------------------------------------------

QT       += widgets

TARGET = hobbits-widgets
TEMPLATE = lib

CONFIG += c++11
CONFIG -= debug_and_release_target

DEFINES += HOBBITSWIDGETS_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        actionrenderprogress.cpp \
        batchedititem.cpp \
        batchedititemwidget.cpp \
        batcheditlink.cpp \
        batcheditor.cpp \
        batcheditscene.cpp \
        batchinputdialog.cpp \
        bitcontainermanagerui.cpp \
        bitcontainertreemodel.cpp \
    displayresult.cpp \
        displaywidget.cpp \
        highlightnavigator.cpp \
        displayhandle.cpp \
        displayhelper.cpp \
    multidisplaywidget.cpp \
        parameterdelegateui.cpp \
        parametereditordialog.cpp \
        parametereditorfileselect.cpp \
        parameterhelper.cpp \
        plugintreemodel.cpp \
        previewscrollbar.cpp \
        simpleparametereditor.cpp \
        widgetssettings.cpp

HEADERS += \
        abstractparametereditor.h \
        batchedititem.h \
        batchedititemwidget.h \
        batcheditlink.h \
        batcheditor.h \
        batcheditscene.h \
        batchinputdialog.h \
        bitcontainermanagerui.h \
    displayresult.h \
        displaywidget.h \
        hobbits-widgets_global.h \
    multidisplaywidget.h \
        parameterdelegateui.h \
        parametereditordialog.h \
        parametereditorfileselect.h \
        parameterhelper.h \
        plugintreemodel.h \
        previewscrollbar.h \
        actionrenderprogress.h \
        bitcontainertreemodel.h \
        displayhandle.h \
        displayhelper.h \
        highlightnavigator.h \
        simpleparametereditor.h \
        widgetssettings.h

FORMS += \
        batchedititemwidget.ui \
        batcheditor.ui \
        batchinputdialog.ui \
        highlightnavigator.ui \
        parametereditordialog.ui \
        simpleparametereditor.ui

LIBS += -L$$OUT_PWD/../hobbits-core/ -lhobbits-core
INCLUDEPATH += $$PWD/../hobbits-core
DEPENDPATH += $$PWD/../hobbits-core

headers.files   += $$HEADERS
headers.path    = $$(HOME)/.local/include/hobbits
target.path = $$(HOME)/.local/lib/hobbits
INSTALLS += target headers

RESOURCES += \
    hobbitswidgets.qrc
