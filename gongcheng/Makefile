CC = sdcc
CFLAGS =
SRC_FILE = ${wildcard *.c}
#SRC_FILE = ${shell ls *.c}
#OBJ_FILE = ${SRC_FILE: .c=.o}
#OBJ_FILE = ${patsubst %.c, %.o, ${SRC_FILE}}

OBJ_FILE = test.rel
OBJ_FILE += ${filter-out test.rel, ${patsubst %.c, %.rel, ${SRC_FILE}}}

%.rel:%.c
	${CC} ${CFLAGS} -c $^ -o build/


all:test

test:${OBJ_FILE}
	cd build && ${CC} ${CFLAGS} ${OBJ_FILE} \
	&&objcopy -I ihex -O binary test.ihx test.bin 

clean:
	-cd build&&rm *
