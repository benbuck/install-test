setlocal enabledelayedexpansion

set BUILD_DIR=build
if not exist %BUILD_DIR% mkdir %BUILD_DIR%
pushd %BUILD_DIR%

cmake ..
cmake --build .
cmake --build . --target PACKAGE

popd
