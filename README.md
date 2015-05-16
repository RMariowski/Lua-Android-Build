Lua Android Build
===========

Ready to build project of lua for android.

**Lua version:** 5.2.2  
**Library type:** static


#####Build:

1. `cd Lua-Android-Build/android/`

2. `ndk-build`

#####Usage:

1. Copy `liblua.a` to folder with `*.mk` file of your project.

2. Add to your `*.mk` file:

>LOCAL_MODULE := liblua  
>LOCAL_SRC_FILES := liblua.a  
>include $(PREBUILT_STATIC_LIBRARY)

3.
>LOCAL_STATIC_LIBRARIES := [other static libs or none] lua
