CC=sdcc
CFLAGS =
OBJS=ut62256_test.rel libc.rel
%.rel:%.c
	${CC} ${CFLAGS} -c $^ -o build/


all:test

test:${OBJS}
	cd build && ${CC} ${CFLAGS} ${OBJS} \
	&&objcopy -I ihex -O binary ut62256_test.ihx test.bin 

clean:
	-cd build&&rm *
