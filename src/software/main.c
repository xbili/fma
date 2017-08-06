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
	int8_t *a0, *a1, *a2, *a3, *b0, *b1, *b2, *b3;
	int32_t *out_1;

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

	a0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_0_BASE) & (unsigned long)(HW_REGS_MASK));
	a1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_1_BASE) & (unsigned long)(HW_REGS_MASK));
	a2 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_2_BASE) & (unsigned long)(HW_REGS_MASK));
	a3 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_3_BASE) & (unsigned long)(HW_REGS_MASK));

	b0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_0_BASE) & (unsigned long)(HW_REGS_MASK));
	b1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_1_BASE) & (unsigned long)(HW_REGS_MASK));
	b2 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_2_BASE) & (unsigned long)(HW_REGS_MASK));
	b3 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_3_BASE) & (unsigned long)(HW_REGS_MASK));

	out_1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + OUT_0_BASE) & (unsigned long)(HW_REGS_MASK));

	// Test case
	*a0 = -8;
	*a1 = -8;
	*a2 = -8;
	*a3 = -8;

	*b0 = -8;
	*b1 = -8;
	*b2 = -8;
	*b3 = -8;

	printf("%d\n", *out_1);
	assert(*out_1 == 256);

	if (munmap(virtual_base, HW_REGS_SPAN) != 0) {
		printf("ERROR: munmap() failed...\n");
		close(fd);
		return 1;
	}

	close(fd);

	return 0;
}
