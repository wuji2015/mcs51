CC = sdcc
CFLAGS =
LIBS = 
SRC_FILE = ${wildcard *.c}
#SRC_FILE = ${shell ls *.rel}
#OBJ_FILE = ${SRC_FILE:.c=.rel}
OBJ_FILE = ${target}.rel
OBJ_FILE += ${filter-out ${target}.rel, ${patsubst %.c, %.rel, ${SRC_FILE}}}

BUILD_DIR = build
target=test

# Attempt to create a output directory.
$(shell [ -d "${BUILD_DIR}" ] || mkdir -p "${BUILD_DIR}")
# Verify if it was successful.
BUILD_DIR := $(shell cd "$(BUILD_DIR)" && /bin/pwd)
$(if "$(BUILD_DIR)",,$(error output directory "$(saved-output)" does not exist))


%.rel:%.c
	${CC} ${CFLAGS} -c $^ -o "${BUILD_DIR}/$@"

all: ${target}

${target}:${OBJ_FILE}
	cd "${BUILD_DIR}"	&& ${CC} ${CFLAGS} ${OBJ_FILE} -o ${target} \
	      	&&  objcopy -I ihex -O binary ${target} ${target}.bin

clean:
	-cd "${BUILD_DIR}"&&rm *

.PHONY: all
