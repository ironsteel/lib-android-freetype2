ifndef USE_FREETYPE
USE_FREETYPE := 2.4.8
endif

ifeq ($(USE_FREETYPE),2.4.8)
LOCAL_PATH:= $(FREETYPE_ROOT)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
		src/base/ftbbox.c \
		src/base/ftbitmap.c \
		src/base/ftglyph.c \
		src/base/ftstroke.c \
		src/base/ftxf86.c \
		src/base/ftbase.c \
		src/base/ftsystem.c \
		src/base/ftinit.c \
		src/base/ftgasp.c \
		src/raster/raster.c \
		src/sfnt/sfnt.c \
		src/smooth/smooth.c \
		src/autofit/autofit.c \
		src/truetype/truetype.c \
		src/cff/cff.c \
		src/psnames/psnames.c \
		src/pshinter/pshinter.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/builds \
	$(LOCAL_PATH)/include

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC
LOCAL_CFLAGS += "-DFT2_BUILD_LIBRARY"

LOCAL_CFLAGS += -O2

LOCAL_MODULE:= libft2

include $(BUILD_STATIC_LIBRARY)
endif

