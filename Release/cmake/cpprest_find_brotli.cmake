function(cpprest_find_brotli)
	if(NOT TARGET cpprestsdk_brotli_internal)
		find_package(brotli CONFIG REQUIRED)
		add_library(cpprestsdk_brotli_internal INTERFACE)
		target_link_libraries(cpprestsdk_brotli_internal INTERFACE brotli::brotli)
	endif()
endfunction()
