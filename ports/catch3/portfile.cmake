vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO catchorg/Catch2
    REF v3.0.0-preview4
    SHA512 3a879da07dd5f4e2bcd0d5e1be0de5b0128930c3a5a343805b308ddc788618bb0a9d5ea6de673cf8745f7997eebafabb65d29ee39120bf82218f8df0f47be039
    HEAD_REF devel
)

string(COMPARE EQUAL "${VCPKG_LIBRARY_LINKAGE}" "static" BUILD_STATIC)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
        -DCATCH_BUILD_EXAMPLES=OFF
        -DCATCH_BUILD_STATIC_LIBRARY=${BUILD_STATIC}
)

vcpkg_cmake_install()