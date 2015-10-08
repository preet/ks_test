CONFIG      -= qt

CONFIG(debug,debug|release) {
    message("ks: Debug Build")
}

CONFIG(release,debug|release) {
    message("ks: Release Build")
}


android {
    message("ks: Platform: Android")
}
linux {
    !android {
        message("ks: Platform: Linux")
    }
}


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
