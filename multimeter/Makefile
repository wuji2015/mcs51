CC = sdcc
AR = sdar
INCLUDE_DIR = /home/zj/mcs51/include/
LIBS_DIR = /home/zj/mcs51/libs/
CFLAGS = -I ${INCLUDE_DIR} -L ${LIBS_DIR} \
	 --iram-size 256 --xram-size 1024 --code-size 61440 \
	 --model-large
_LIBS = ad7705 1602 timer
LIBS = ${patsubst %, %.lib, ${_LIBS}}
SRC_FILE = ${wildcard *.c}
#SRC_FILE = ${shell ls *.rel}
#OBJ_FILE = ${SRC_FILE:.c=.rel}
OBJ_FILE = ${target}.rel
OBJ_FILE += ${filter-out ${target}.rel, ${patsubst %.c, %.rel, ${SRC_FILE}}}

BUILD_DIR = build
target=multimeter

all: ${target}


#all: ${target}.lib


# Attempt to create a output directory.
$(shell [ -d "${BUILD_DIR}" ] || mkdir -p "${BUILD_DIR}")
# Verify if it was successful.
BUILD_DIR := $(shell cd "$(BUILD_DIR)" && /bin/pwd)
$(if "$(BUILD_DIR)",,$(error output directory "$(saved-output)" does not exist))


%.rel:%.c
	${CC} ${CFLAGS} -c $^ -o "${BUILD_DIR}/$@"


${target}:${OBJ_FILE}
	cd "${BUILD_DIR}"	&& ${CC} ${CFLAGS} -l${LIBS} ${OBJ_FILE} -o ${target}.hex \
	      	&&  objcopy -I ihex -O binary ${target}.hex ${target}.bin

${target}.lib:${OBJ_FILE}
	cd "${BUILD_DIR}" && ${AR} -rs ${target}.lib ${OBJ_FILE} && cp ${target}.lib ${LIBS_DIR}

clean:
	-cd "${BUILD_DIR}"&&rm *

run:
	cd "${BUILD_DIR}" && stcflash -r12 ${target}.bin 

.PHONY: all
