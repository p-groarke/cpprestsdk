cmake_minimum_required(VERSION 3.9)
project(cpprestsdk-root CXX)

include(FetchContent)
include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

if (${FEA_CMAKE_LOCAL})
	set(FETCHCONTENT_SOURCE_DIR_FEA_CMAKE ${CMAKE_CURRENT_SOURCE_DIR}/../fea_cmake CACHE INTERNAL "")
endif()
FetchContent_Declare(fea_cmake
	GIT_REPOSITORY https://github.com/p-groarke/fea_cmake.git
	GIT_TAG main
)
FetchContent_MakeAvailable(fea_cmake)
include(${fea_cmake_SOURCE_DIR}/CMakeLists.txt)

fea_pull_conan()

enable_testing()
add_subdirectory(Release)
