if(${BOARD_INGENIC_T31})
    set(BOARD "T31")
elseif(${BOARD_RPI})
    set(BOARD "V4L2")
else()
    set(BOARD "FILE")
endif()
add_subdirectory(libraries/amazon/amazon-kinesis-video-streams-media-interface)
