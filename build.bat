setlocal enabledelayedexpansion

if not exist build_nsis mkdir build_nsis
pushd build_nsis
cmake .. -D CPACK_GENERATOR=NSIS
cmake --build .
cmake --build . --target PACKAGE
popd

if not exist build_wix mkdir build_wix
pushd build_wix
cmake .. -D CPACK_GENERATOR=WIX
cmake --build .
cmake --build . --target PACKAGE
popd
