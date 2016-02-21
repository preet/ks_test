CONFIG      -= qt

KS_BUILD_INFO_CONFIG = Unknown
KS_BUILD_INFO_PLATFORM = Unknown
KS_BUILD_INFO_SPEC = $$[QMAKE_XSPEC]
KS_BUILD_INFO_ARCH = $${QT_ARCH}

CONFIG(debug,debug|release) {
    KS_BUILD_INFO_CONFIG = Debug
}

CONFIG(release,debug|release) {
    KS_BUILD_INFO_CONFIG = Release
}

android {
    KS_BUILD_INFO_PLATFORM = Android
}
linux {
    !android {
        KS_BUILD_INFO_PLATFORM = Linux
    }
}

message("ks: Build Info: $${KS_BUILD_INFO_PLATFORM}, $${KS_BUILD_INFO_SPEC}, $${KS_BUILD_INFO_ARCH}, $${KS_BUILD_INFO_CONFIG}")

#ks_core
include($${PATH_KS}/ks_core/ks_core.pri)

#ks_ecs
include($${PATH_KS}/ks_ecs/ks_ecs.pri)

#ks_gl
include($${PATH_KS}/ks_gl/ks_gl.pri)

#ks_draw
include($${PATH_KS}/ks_draw/ks_draw.pri)

#ks_gui
include($${PATH_KS}/ks_gui/ks_gui.pri)

#ks_platform
include($${PATH_KS}/ks_platform/ks_platform.pri)

#ks_shared
include($${PATH_KS}/ks_shared/ks_shared.pri)

#ks_text
include($${PATH_KS}/ks_text/ks_text.pri)
