find_package( SWIG REQUIRED )

include( ${SWIG_USE_FILE} )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR} /usr/lib/jvm/default-java/include )

set( CMAKE_SWIG_FLAGS "" )
set_source_files_properties( event.i PROPERTIES CPLUSPLUS ON )
set_source_files_properties( event.i PROPERTIES SWIG_FLAGS "-includeall" )

swig_add_module( eventj java event.i )
swig_link_libraries( eventj ${java_libraries} )
