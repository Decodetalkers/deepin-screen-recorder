######################################################################
# Automatically generated by qmake (3.1) Wed Sep 2 18:44:19 2020
######################################################################
include($$PWD/../../3rdparty/stub_linux/stub.pri)
TEMPLATE = app
TARGET = ut_screen_shot_recorder
INCLUDEPATH += . ../../src/

DEFINES += DDE_START_FLAGE_ON
DEFINES += OCR_SCROLL_FLAGE_ON
DEFINES += KF5_WAYLAND_FLAGE_ON

QT += core gui testlib KWindowSystem KWaylandClient KI18n KConfigCore

QT += core
QT += widgets
QT += gui
QT += network
QT += x11extras
QT += dbus
QT += multimedia
QT += multimediawidgets
QT += concurrent
LIBS += -lX11 -lXext -lXtst -lXfixes -lXcursor -lgtest -lopencv_core -lopencv_imgproc -lKF5WaylandClient -lKF5ConfigCore -lavcodec -lavdevice -lavfilter -lavformat -lavutil -lswscale -lswresample -lepoxy

CONFIG += link_pkgconfig
CONFIG += c++11
PKGCONFIG += dtkgui dtkwidget xcb xcb-util dframeworkdbus gstreamer-app-1.0


RESOURCES = ../../assets/image/deepin-screen-recorder.qrc \
    ../../assets/resources/resources.qrc \
    ../../assets/icons/icons.qrc \
    testImg.qrc

QMAKE_CXXFLAGS += -g
QMAKE_CXXFLAGS += -Wno-error=deprecated-declarations -Wno-deprecated-declarations

QMAKE_CXXFLAGS += -g -Wall -fprofile-arcs -ftest-coverage -O0
QMAKE_LFLAGS += -g -Wall -fprofile-arcs -ftest-coverage  -O0


#内存检测标签
TSAN_TOOL_ENABLE = true
ARCH = $$QMAKE_HOST.arch
isEqual(ARCH, mips64) {
    TSAN_TOOL_ENABLE = false
}
equals(TSAN_TOOL_ENABLE, true ) {
    #DEFINES += TSAN_THREAD #互斥
    DEFINES += ENABLE_TSAN_TOOL
    message("deepin-screen-recorder enabled TSAN function with set: " $$TSAN_TOOL_ENABLE)
    contains(DEFINES, TSAN_THREAD){
       QMAKE_CXXFLAGS+="-fsanitize=thread"
       QMAKE_CFLAGS+="-fsanitize=thread"
       QMAKE_LFLAGS+="-fsanitize=thread"
    } else {
       QMAKE_CXXFLAGS+="-fsanitize=undefined,address,leak -fno-omit-frame-pointer"
       QMAKE_CFLAGS+="-fsanitize=undefined,address,leak -fno-omit-frame-pointer"
       QMAKE_LFLAGS+="-fsanitize=undefined,address,leak -fno-omit-frame-pointer"
    }
}

# The following define makes your compiler warn you if you use any
# feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
HEADERS += test_all_interfaces.h \
           ut_button_feedback.h \
           ut_countdown_tooltip.h \
           ut_main_window.h \
           ut_record_process.h \
           ut_RecorderRegionShow.h \
           ut_screenshot.h \
           ut_settings.h \
           ut_show_buttons.h \
           ut_utils.h \
           dbusinterface/ut_dbusnotify.h \
           dbusinterface/ut_ocrinterface.h \
           menucontroller/ut_menucontroller.h \
           utils/ut_audioutils.h \
           utils/ut_baseutils.h \
           utils/ut_calculaterect.h \
           utils/ut_configsettings.h \
           #utils/ut_dbusutils.h \
           #utils/ut_desktopinfo.h \
           utils/ut_screengrabber.h \
           utils/ut_shortcut.h \
           utils/ut_tempfile.h \
           utils/ut_utils_other.h \
           widgets/ut_colortoolwidget.h \
           widgets/ut_keybuttonwidget.h \
           widgets/ut_maintoolwidget.h \
           widgets/ut_zoomIndicator.h\
        ../../src/utils/audioutils.h \
        ../../src/utils/baseutils.h \
        ../../src/utils/calculaterect.h \
        ../../src/utils/configsettings.h \
        #../../src/utils/dbusutils.h \
        #../../src/utils/desktopinfo.h \
        ../../src/utils/screengrabber.h \
        ../../src/utils/shortcut.h \
        ../../src/utils/tempfile.h \
        ../../src/utils/shapesutils.h \
        ../../src/utils/camerawatcher.h \
        ../../src/utils/voicevolumewatcher.h \
        ../../src/utils/pixmergethread.h \
        ../../src/utils/scrollScreenshot.h \
        ../../src/utils/waylandscrollmonitor.h \
        ../../src/widgets/scrollshottip.h \
        ../../src/widgets/colortoolwidget.h \
        ../../src/widgets/keybuttonwidget.h \
        ../../src/widgets/maintoolwidget.h \
        ../../src/widgets/zoomIndicator.h \
        ../../src/widgets/zoomIndicatorGL.h \
        ../../src/widgets/filter.h \
        ../../src/widgets/tooltips.h \
        ../../src/widgets/sidebar.h \
        ../../src/widgets/toolbar.h \
        ../../src/widgets/subtoolwidget.h \
        ../../src/widgets/camerawidget.h \
        ../../src/widgets/toptips.h \
        ../../src/widgets/shapeswidget.h \
        ../../src/widgets/textedit.h \
        ../../src/widgets/shottoolwidget.h \
        ../../src/widgets/toolbutton.h \
        ../../src/widgets/previewwidget.h \
        ../../src/menucontroller/menucontroller.h \
        ../../src/dbusinterface/dbusnotify.h \
        ../../src/dbusinterface/ocrinterface.h \
        ../../src/dbusinterface/pinscreenshotsinterface.h \
        ../../src/constant.h \
        ../../src/utils.h \
        ../../src/button_feedback.h \
        ../../src/countdown_tooltip.h \
        ../../src/main_window.h \
        ../../src/record_process.h \
        ../../src/RecorderRegionShow.h \
        ../../src/screenshot.h \
        ../../src/settings.h \
        ../../src/show_buttons.h \
        ../../src/event_monitor.h \
        #../../src/lib/GifH/gif.h \
        #../../src/xgifrecord.h \
        ../../src/recordertablet.h \
        ../../src/gstrecord/gstrecordx.h \
     ../../src/waylandrecord/writeframethread.h \
     ../../src/waylandrecord/waylandintegration.h \
     ../../src/waylandrecord/waylandintegration_p.h \
     ../../src/waylandrecord/recordadmin.h \
     ../../src/waylandrecord/avoutputstream.h \
     ../../src/waylandrecord/avinputstream.h \
     ../../src/waylandrecord/avlibinterface.h \
        widgets/ut_shapeswidget.h \
        widgets/ut_toptips.h \
        widgets/ut_camerawidget.h \
        widgets/ut_tooltips.h \
        widgets/ut_textedit.h \
        widgets/ut_shottoolwidget.h \
        widgets/ut_subtoolwidget.h \
        widgets/ut_hovershadowfilter.h \
        widgets/ut_hoverfilter.h \
        widgets/ut_hintfilter.h \
        widgets/ut_toolbutton.h \
        widgets/ut_toolbarwidget.h \
        widgets/ut_toolbar.h \
        widgets/ut_hintfilterprivate.h \
        widgets/ut_sidebar.h \
        widgets/ut_sidebarwidget.h \
    dbusinterface/ut_ocrinterface.h \
    widgets/ut_scrollshottip.h \
    utils/ut_pixmergethread.h \
    utils/ut_scrollScreenshot.h \
    waylandrecord/ut_avinputstream.h \
    waylandrecord/ut_avoutputstream.h \
    waylandrecord/ut_recordadmin.h \
    waylandrecord/ut_waylandintegration_p.h \
    waylandrecord/ut_waylandintegration.h \
    waylandrecord/ut_writeframethread.h \
    utils/ut_voiceVolumeWatcher.h \
    utils/ut_WaylandScrollMonitor.h


SOURCES += main.cpp \
    ../../src/utils/audioutils.cpp \
    ../../src/utils/baseutils.cpp \
    ../../src/utils/calculaterect.cpp \
    ../../src/utils/configsettings.cpp \
    #../../src/utils/dbusutils.cpp \
    #../../src/utils/desktopinfo.cpp \
    ../../src/utils/screengrabber.cpp \
    ../../src/utils/shortcut.cpp \
    ../../src/utils/tempfile.cpp \
    ../../src/utils/shapesutils.cpp \
    ../../src/utils/camerawatcher.cpp \
    ../../src/utils/voicevolumewatcher.cpp \
    ../../src/utils/pixmergethread.cpp \
    ../../src/utils/scrollScreenshot.cpp \
    ../../src/utils/waylandscrollmonitor.cpp \
    ../../src/widgets/scrollshottip.cpp \
    ../../src/widgets/colortoolwidget.cpp \
    ../../src/widgets/keybuttonwidget.cpp \
    ../../src/widgets/maintoolwidget.cpp \
    ../../src/widgets/zoomIndicator.cpp \
    ../../src/widgets/zoomIndicatorGL.cpp \
    ../../src/widgets/filter.cpp \
    ../../src/widgets/tooltips.cpp \
    ../../src/widgets/sidebar.cpp \
    ../../src/widgets/toolbar.cpp \
    ../../src/widgets/subtoolwidget.cpp \
    ../../src/widgets/camerawidget.cpp \
    ../../src/widgets/toptips.cpp \
    ../../src/widgets/shapeswidget.cpp \
    ../../src/widgets/textedit.cpp \
    ../../src/widgets/shottoolwidget.cpp \
    ../../src/widgets/previewwidget.cpp \
    ../../src/waylandrecord/writeframethread.cpp \
    ../../src/waylandrecord/waylandintegration.cpp \
    ../../src/waylandrecord/recordadmin.cpp \
    ../../src/waylandrecord/avinputstream.cpp \
    ../../src/waylandrecord/avoutputstream.cpp \
    ../../src/waylandrecord/avlibinterface.cpp \
    ../../src/menucontroller/menucontroller.cpp \
    ../../src/dbusinterface/dbusnotify.cpp \
    ../../src/dbusinterface/ocrinterface.cpp \
    ../../src/dbusinterface/pinscreenshotsinterface.cpp \
    ../../src/constant.cpp \
    ../../src/utils.cpp \
    ../../src/button_feedback.cpp \
    ../../src/countdown_tooltip.cpp \
    ../../src/main_window.cpp \
    ../../src/record_process.cpp \
    ../../src/RecorderRegionShow.cpp \
    ../../src/screenshot.cpp \
    ../../src/settings.cpp \
    ../../src/show_buttons.cpp \
    ../../src/event_monitor.cpp \
    #../../src/xgifrecord.cpp \
    ../../src/recordertablet.cpp \
    ../../src/gstrecord/gstrecordx.cpp
