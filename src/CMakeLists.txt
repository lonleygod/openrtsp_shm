# 显示系统的HOME环境变量的值  
MESSAGE(STATUS "zhou:$ENV{HOME}")  

# 指定头文件查找目录  
# 注意，这里指定绝对路径。  
INCLUDE_DIRECTORIES("../include" "/usr/local/include" "/usr/local/include/BasicUsageEnvironment" "/usr/local/include/UsageEnvironment" "/usr/local/include/liveMedia" "/usr/local/include/groupsock")  

#SET(OPENCV_LIBRARY)

# 指定库文件查找目录（不能只指定头文件，也需要连接到库文件）  
# 注意，这里指定绝对路径, 也可通过设置系统环境变量LD_LIBRARY_PATH来指定。  
LINK_DIRECTORIES("/usr/local/lib")  

find_package(OpenCV) #REQUIRED)

# 生成可执行文件到项目的bin目录  
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)  

AUX_SOURCE_DIRECTORY(${PROJECT_SOURCE_DIR}/src SRC_LIST)


ADD_EXECUTABLE(openRTSP ${SRC_LIST})  

# 制定链接的外部Lib  
target_link_libraries(openRTSP ${OpenCV_LIBS} libx264.a libBasicUsageEnvironment.a libUsageEnvironment.a libgroupsock.a libliveMedia.a)
#TARGET_LINK_LIBRARIES(showCam libIlmImf.a liblibjasper.a liblibjpeg.a liblibpng.a liblibtiff.a libzlib.a libopencv_highgui.a libopencv_core.a libopencv_imgproc.a libopencv_ts.a) 

