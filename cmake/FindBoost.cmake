include(FindPackageHandleStandardArgs)
unset(BOOST_FOUND)
set(BOOST-VERSION boost-1.65.1)

find_path(Boost_INCLUDE_DIR NAMES boost PATHS ${LIB_PATH}/include/${BOOST-VERSION} NO_DEFAULT_PATH)

find_library(BOOST_SYSTEM NAMES libboost_system.so PATHS ${LIB_PATH}/lib/${BOOST-VERSION} NO_DEFAULT_PATH)
find_library(BOOST_IOSTREAMS NAMES libboost_iostreams.so PATHS ${LIB_PATH}/lib/${BOOST-VERSION} NO_DEFAULT_PATH)
find_library(BOOST_THREAD NAMES libboost_thread.so PATHS ${LIB_PATH}/lib/${BOOST-VERSION} NO_DEFAULT_PATH)
find_library(BOOST_FILESYSTEM NAMES libboost_filesystem.so PATHS ${LIB_PATH}/lib/${BOOST-VERSION} NO_DEFAULT_PATH)
find_library(BOOST_SERIALIZATION NAMES libboost_serialization.so PATHS ${LIB_PATH}/lib/${BOOST-VERSION} NO_DEFAULT_PATH)
find_library(BOOST_UNIT_TEST NAMES libboost_unit_test_framework.so PATHS ${LIB_PATH}/lib/${BOOST-VERSION} NO_DEFAULT_PATH)
# set BOOST_FOUND
find_package_handle_standard_args(Boost DEFAULT_MSG Boost_INCLUDE_DIR BOOST_SYSTEM BOOST_IOSTREAMS
                                  BOOST_THREAD BOOST_FILESYSTEM BOOST_SERIALIZATION BOOST_UNIT_TEST)

if(BOOST_FOUND)
    set(Boost_LIBRARIES ${BOOST_SYSTEM} ${BOOST_IOSTREAMS}  ${BOOST_THREAD} ${BOOST_FILESYSTEM} ${BOOST_SERIALIZATION} ${BOOST_UNIT_TEST})
    set(Boost_INCLUDE_DIRS ${Boost_INCLUDE_DIR})
endif(BOOST_FOUND)