# - Imported targets for GSL port
# Generated by CMake @CMAKE_VERSION@
# Generally copies CMake's autogenerated version

IF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   MESSAGE(FATAL_ERROR "CMake >= 2.6.0 required")
ENDIF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
CMAKE_POLICY(PUSH)
CMAKE_POLICY(VERSION 2.6)

#----------------------------------------------------------------
# Handcrafted CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Create imported target gsl
ADD_LIBRARY(gsl SHARED IMPORTED)

# Create imported target gslcblas
ADD_LIBRARY(gslcblas SHARED IMPORTED)

# Load information for each installed configuration.
GET_FILENAME_COMPONENT(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
FILE(GLOB CONFIG_FILES "${_DIR}/GSLLibraryDepends-*.cmake")
FOREACH(f ${CONFIG_FILES})
  INCLUDE(${f})
ENDFOREACH(f)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
CMAKE_POLICY(POP)
