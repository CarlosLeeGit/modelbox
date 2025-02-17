#
# Copyright 2021 The Modelbox Project Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


cmake_minimum_required(VERSION 3.10)

if (NOT WITH_JAVA) 
    message(STATUS "java support is disabled")
    return()
endif()

set(UNIT_NAME "java")

project(modelbox-virtualdriver-${UNIT_NAME})

file(GLOB_RECURSE MODELBOX_VIRTUALDRIVER_SOURCE *.cpp *.cc *.c)

include_directories(${CMAKE_CURRENT_LIST_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})
include_directories(${LIBMODELBOX_INCLUDE})
include_directories(${LIBMODELBOX_BASE_INCLUDE})
include_directories(${LIBMODELBOX_DEVICE_CPU_INCLUDE})

set(MODELBOX_VIRTUALDRIVER_SHARED libmodelbox-virtualdriver-${UNIT_NAME}-shared)
set(MODELBOX_VIRTUALDRIVER_SOURCE_INCLUDE ${CMAKE_CURRENT_LIST_DIR})

add_library(${MODELBOX_VIRTUALDRIVER_SHARED} SHARED ${MODELBOX_VIRTUALDRIVER_SOURCE})
set(LIBMODELBOX_VIRTUAL_JAVA_SHARED ${MODELBOX_VIRTUALDRIVER_SHARED})

set_target_properties(${MODELBOX_VIRTUALDRIVER_SHARED} PROPERTIES 
    SOVERSION ${MODELBOX_VERSION_MAJOR}
    VERSION ${MODELBOX_VERSION_MAJOR}.${MODELBOX_VERSION_MINOR}.${MODELBOX_VERSION_PATCH}
)

set(LIBMODELBOX_VIRTUALDRIVER_JAVA_SHARED ${MODELBOX_VIRTUALDRIVER_SHARED})

target_link_libraries(${MODELBOX_VIRTUALDRIVER_SHARED} pthread)
target_link_libraries(${MODELBOX_VIRTUALDRIVER_SHARED} rt)
target_link_libraries(${MODELBOX_VIRTUALDRIVER_SHARED} dl)
target_link_libraries(${MODELBOX_VIRTUALDRIVER_SHARED} ${LIBMODELBOX_SHARED})

set_target_properties(${MODELBOX_VIRTUALDRIVER_SHARED} PROPERTIES OUTPUT_NAME "modelbox-virtualdriver-${UNIT_NAME}")

install(TARGETS ${MODELBOX_VIRTUALDRIVER_SHARED}
    COMPONENT libmodelbox
    RUNTIME DESTINATION ${CMAKE_INSTALL_FULL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR}
    OPTIONAL
    )

install(DIRECTORY 
    ${HEADER} DESTINATION ${CMAKE_INSTALL_FULL_INCLUDEDIR}
    COMPONENT libmodelbox-devel
    )

set(LIBMODELBOX_VIRTUALDRIVER_JAVA_SHARED ${MODELBOX_VIRTUALDRIVER_SHARED} CACHE INTERNAL "")
set(LIBMODELBOX_VIRTUALDRIVER_JAVA_INCLUDE ${MODELBOX_VIRTUALDRIVER_SOURCE_INCLUDE} CACHE INTERNAL "")
set(LIBMODELBOX_VIRTUALDRIVER_JAVA_SOURCES ${MODELBOX_VIRTUALDRIVER_SOURCE} CACHE INTERNAL "")
set(LIBMODELBOX_VIRTUALDRIVER_JAVA_SO_PATH ${CMAKE_CURRENT_BINARY_DIR}/libmodelbox-virtualdriver-${UNIT_NAME}.so CACHE INTERNAL "")


list(APPEND DRIVER_UNIT_TEST_SOURCE ${MODELBOX_UNIT_TEST_SOURCE})
list(APPEND DRIVER_UNIT_TEST_TARGET ${MODELBOX_VIRTUALDRIVER_SHARED})
set(DRIVER_UNIT_TEST_SOURCE ${DRIVER_UNIT_TEST_SOURCE} CACHE INTERNAL "")
set(DRIVER_UNIT_TEST_TARGET ${DRIVER_UNIT_TEST_TARGET} CACHE INTERNAL "")

