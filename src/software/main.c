#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

int main() {

	void *virtual_base;
	int fd;
	int8_t *in_1, *in_2;
	int16_t *out_1;

	// map the address space for the LED registers into user space so we can interact with them.
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span

	if((fd = open( "/dev/mem", (O_RDWR | O_SYNC))) == -1) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return 1;
	}

	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );

	if (virtual_base == MAP_FAILED) {
		printf("ERROR: mmap() failed...\n");
		close(fd);
		return 1;
	}

	in_1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + IN_1_BASE) & (unsigned long)(HW_REGS_MASK));
	in_2 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + IN_2_BASE) & (unsigned long)(HW_REGS_MASK));
	out_1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + OUT_1_BASE) & (unsigned long)(HW_REGS_MASK));

	int i, j;
	for (i = -128; i < 128; i++) {
		for (j = -128; j < 128; j++) {
			printf("i: %d\n", i);
			printf("j: %d\n", j);

			*in_1 = i;
			*in_2 = j;

			printf("Result: %d\n", *out_1);
			printf("Expected: %d\n", i * j);

			assert(*out_1 == i * j);
		}
	}


	if (munmap(virtual_base, HW_REGS_SPAN) != 0) {
		printf("ERROR: munmap() failed...\n");
		close(fd);
		return 1;
	}

	close(fd);

	return 0;
}
