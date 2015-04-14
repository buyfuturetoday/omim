TARGET = generator_tests
CONFIG += console warn_on
CONFIG -= app_bundle
TEMPLATE = app

ROOT_DIR = ../..
DEPENDENCIES = generator map routing indexer platform geometry coding base expat sgitess protobuf tomcrypt osrm succinct

include($$ROOT_DIR/common.pri)

QT *= core

win32 {
  LIBS *= -lShell32
  win32-g++: LIBS *= -lpthread
}
macx-*: LIBS *= "-framework Foundation"

INCLUDEPATH *= $$ROOT_DIR/3party/expat/lib

HEADERS += \

SOURCES += \
    ../../testing/testingmain.cpp \
    check_mwms.cpp \
    classificator_tests.cpp \
    coasts_test.cpp \
    feature_builder_test.cpp \
    feature_merger_test.cpp \
    osm_id_test.cpp \
    osm_o5m_source_test.cpp \
    osm_parser_test.cpp \
    osm_type_test.cpp \
    tesselator_test.cpp \
    triangles_tree_coding_test.cpp \
