project(GSLCMakeSupport)
if(NOT gsl_VERSION)
  message(FATAL_ERROR "NO gsl_VERSION VARIABLE set")
endif()
configure_file(GSLConfigVersion.cmake.in GSLConfigVersion.cmake @ONLY)
configure_file(GSLLibraryDepends-mode.cmake.in GSLLibraryDepends-Release.cmake @ONLY)

install(FILES
  GSLConfig.cmake
  GSLConfigVersion.cmake
  GSLLibraryDepends-Release.cmake
  GSLLibraryDepends.cmake
  DESTINATION
   lib/cmake/GSL-${gsl_VERSION}
   )


