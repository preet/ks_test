TEMPLATE    = app
TARGET      = ks_test

# ks
PATH_KS = $${_PRO_FILE_PWD_}/..
include($${_PRO_FILE_PWD_}/ks.pri)

# automated tests
CONFIG      += auto_test
CONFIG      += auto_test_core
CONFIG      += auto_test_ecs
CONFIG      += auto_test_draw
CONFIG      += auto_test_shared

auto_test {
    message("ks: Auto Test Build")
    PATH_KS_AUTO_TEST = $${_PRO_FILE_PWD_}

    DEFINES += KS_ENV_AUTO_TEST

    # compile in catch
    SOURCES += $${PATH_KS_AUTO_TEST}/KsAutoTest.cpp

    auto_test_core {
        SOURCES += $${PATH_KS_CORE}/test/KsAutoTestCore.cpp
    }

    auto_test_ecs {
        SOURCES += $${PATH_KS_ECS}/test/KsAutoTestEcs.cpp
    }

    auto_test_draw {
        SOURCES += \
            $${PATH_KS_DRAW}/test/KsAutoTestDrawDrawCallUpdater.cpp \
            $${PATH_KS_DRAW}/test/KsAutoTestDrawBatchSystem.cpp \
            $${PATH_KS_DRAW}/test/KsAutoTestDrawKey.cpp
    }

    auto_test_shared {
        SOURCES += \
            $${PATH_KS_SHARED}/test/KsAutoTestProperties.cpp \
            $${PATH_KS_SHARED}/test/KsAutoTestRecycleIndexList.cpp \
            $${PATH_KS_SHARED}/test/KsAutoTestGraph.cpp \
            $${PATH_KS_SHARED}/test/KsAutoTestRangeAllocator.cpp
    }
}


# individual tests

# gl
#SOURCES += $${PATH_KS_GL}/test/KsTestGLBuffers.cpp
#SOURCES += $${PATH_KS_GL}/test/KsTestGLTextures.cpp
#SOURCES += $${PATH_KS_GL}/test/KsTestGLRenderLoop.cpp

# gui
#SOURCES += $${PATH_KS_GUI}/test/KsTestGuiScreens.cpp
#SOURCES += $${PATH_KS_GUI}/test/KsTestGuiWindow.cpp
#SOURCES += $${PATH_KS_GUI}/test/KsTestGuiLayers.cpp

# draw
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawIndividual.cpp
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawMultiple.cpp
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawUniforms.cpp
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawBatched.cpp
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawTextures.cpp
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawGraphicsReset.cpp
#SOURCES += $${PATH_KS_DRAW}/test/KsTestDrawBounce.cpp

# text
#SOURCES += $${PATH_KS_TEXT}/test/KsTestTextAtlas.cpp
#SOURCES += $${PATH_KS_TEXT}/test/KsTestTextLayout.cpp
