cmake_minimum_required(VERSION 3.10)

project(install-test)

add_executable(install-test main.c)

install(
    TARGETS install-test
    RUNTIME
    DESTINATION .
)

set(CPACK_PACKAGE_NAME "install-test")
set(CPACK_GENERATOR "NSIS64")

include(CPack)
