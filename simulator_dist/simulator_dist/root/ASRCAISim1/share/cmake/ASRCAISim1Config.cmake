#Copyright (c) 2021-2023 Air Systems Research Center, Acquisition, Technology & Logistics Agency(ATLA)



# ==============================================
# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.19)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget ASRCAISim1)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)
# ==============================================


get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../" ABSOLUTE)
set(ASRCAISim1_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
find_library(ASRCAISim1_LIBRARY
  NAMES
    Core
  PATHS
    ${PACKAGE_PREFIX_DIR}
  NO_DEFAULT_PATH
)
add_library(ASRCAISim1::Core SHARED IMPORTED)
set_target_properties(ASRCAISim1::Core PROPERTIES
  IMPORTED_LOCATION "${ASRCAISim1_LIBRARY}"
  INTERFACE_INCLUDE_DIRECTORIES "${PACKAGE_PREFIX_DIR}/include;${PACKAGE_PREFIX_DIR}/include/thirdParty"
)
if(WIN32)
  set_target_properties(ASRCAISim1::Core PROPERTIES
    IMPORTED_IMPLIB "${ASRCAISim1_LIBRARY}"
  )
endif()
set(ASRCAISim1_INCLUDE_DIRS ${ASRCAISim1_INCLUDE_DIR} "${PACKAGE_PREFIX_DIR}/include/thirdParty")
set(ASRCAISim1_LIBRARIES ${ASRCAISim1_LIBRARY})

add_library(ASRCAISim1::All SHARED IMPORTED)
set_target_properties(ASRCAISim1::All PROPERTIES
  IMPORTED_LOCATION "${ASRCAISim1_LIBRARY}"
  INTERFACE_INCLUDE_DIRECTORIES "${PACKAGE_PREFIX_DIR}/include;${PACKAGE_PREFIX_DIR}/include/thirdParty"
)
if(WIN32)
  set_target_properties(ASRCAISim1::All PROPERTIES
    IMPORTED_IMPLIB "${ASRCAISim1_LIBRARY}"
  )
endif()

#search addons
file(GLOB ADDONS "${CMAKE_CURRENT_LIST_DIR}/addons/*Config*.cmake")
foreach(f ${ADDONS})
  include(${f})
endforeach()




# ==============================================
# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)