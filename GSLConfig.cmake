# - GSL CMake Configuration File for External Projects
#

#-----------------------------------------------------------------------
# Locate ourselves, since we can locate all other files relative to
# where we are.
#
get_filename_component(__cfl_gsl_config_dir "${CMAKE_CURRENT_LIST_FILE}" PATH)

#-----------------------------------------------------------------------
# Set the header path
#
get_filename_component(GSL_INCLUDE_DIR "${__cfl_gsl_config_dir}/../../../include" ABSOLUTE CACHE)
mark_as_advanced(GSL_INCLUDE_DIR)
set(GSL_INCLUDE_DIRS "${GSL_INCLUDE_DIR}")

#-----------------------------------------------------------------------
# Load library depends file and set compatibility variables
#
if(NOT GSL_LIBDEPS_LOADED)
  include("${__cfl_gsl_config_dir}/GSLLibraryDepends.cmake")
  set(GSL_LIBDEPS_LOADED 1)
endif()

# - Dynamic libs only for now...
set(GSL_LIBRARY gsl CACHE FILEPATH "Path to the gsl library (imported)")
set(GSL_CBLAS_LIBRARY gslcblas CACHE FILEPATH "Path to the gslcblas library (imported)")
mark_as_advanced(GSL_LIBRARY GSL_CBLAS_LIBRARY)
set(GSL_LIBRARIES gsl gslcblas)

