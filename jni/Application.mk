APP_ABI := armeabi
APP_PLATFORM := android-9
LOCAL_ARM_MODE := thumb

APP_CPPFLAGS += -frtti -fexceptions
APP_STL := gnustl_static

APP_MODULES := libft2

#pass the following flag into ndk-build for more build info
#NDK_LOG=1
