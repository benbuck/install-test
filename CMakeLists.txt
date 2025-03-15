cmake_minimum_required(VERSION 3.10)

project(install-test)

add_executable(install-test main.c)

install(TARGETS install-test)

set(CPACK_PACKAGE_NAME "install-test")
set(CPACK_GENERATOR "NSIS" CACHE STRING "Package generator")
if (CPACK_GENERATOR STREQUAL "WIX")
    set(CPACK_WIX_UPGRADE_GUID "C3F1D616-69E8-4D6B-8A80-7D85451D81D9")
endif()

include(CPack)
