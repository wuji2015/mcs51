CC=sdcc
CFLAGS= --model-large --nogcse  --noinvariant   --nojtbound  --nojtbound  \
	--nolabelopt  --nolospre    \
      	--disable-warning 126 --disable-warning 127
OBJ=core.rel cpu.rel test.rel application.rel serial.rel semaphore.rel wifi.rel sound.rel \
	libc.rel hongwai.rel strorage.rel
	
target=test.ihx
libpath=/home/zj/mcs51
all: $(target)

cpu.rel: cpu.asm
	sdas8051 -lsog build/cpu.rel cpu.asm


%.rel:%.c
	${CC} ${CFLAGS} -c $^ -o build/


test.ihx:${OBJ}
	cd build&&$(CC) ${CFLAGS} ${OBJ} --iram-size 256 --xram-size 1024 --code-size 61440  \
	&&objcopy -I ihex -O binary test.ihx test.bin 

clean:
	-cd build&&rm *

stc:
	stcflash -r 12 build/$(target)

minicom:
#	make stc
	minicom -b 230400






#没用的
ifdef ture
semaphore.rel:semaphore.c
	${cc} -c semaphore.c -o build/


core.rel:core.c
	$(cc) -c core.c -o build/

test.rel:test.c
	$(cc) -c test.c -o build/

serial.rel:serial.c
	$(cc) -c ${libpath}/core/serial.c -o build/

wifi.rel:wifi.c
	${cc} -c wifi.c -o build/

sound.rel:sound.c
	${cc} -c sound.c -o build/

application.rel:application.c
	${cc} -c application.c -o build/

libc.rel:libc.c
	${cc} -c ${libpath}/core/libc.c -o build/

hongwai.rel:hongwai.c
	${cc} -c hongwai.c -o build/

strorage.rel:strorage.c
	${cc} -c strorage.c -o build/

endif
