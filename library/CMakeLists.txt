cmake_minimum_required(VERSION 3.0)
project(LibraryHello)

add_library(libHello SHARED src/libhello.cpp include/libhello.hpp)
target_include_directories(
  libHello PUBLIC "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
               "$<INSTALL_INTERFACE:include>")

install(
  TARGETS libHello
  EXPORT LibHelloTargets
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
  RUNTIME DESTINATION bin
  INCLUDES
  DESTINATION include)

install(FILES include/libhello.hpp DESTINATION include)

install(
  EXPORT LibHelloTargets
  FILE LibHelloConfig.cmake
  NAMESPACE LibHello::
  DESTINATION lib/cmake/LibHello)
