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


// Implicit function declarations
void grid_test_8x8(int dimension, int min_value, int max_value, int8_t a[8], int8_t b[8]);
int32_t fma_8x8(int8_t a[8], int8_t b[8]);
int32_t cpu_fma_8x8(int8_t a[8], int8_t b[8]);
void log_inputs(int8_t a[8], int8_t b[8]);


int main() {
	// Loops counters
	int i;

	// Temp buffer to store value
	int value;

	// Read user inputs
	int8_t a[8], b[8];
	int count = 8;

	printf("\nEnter elements of vector A:\n");
	for (i = 0; i < count; ++i) {
		printf("%2d> ", i+1);
		scanf("%d", &value);
		a[i] = value;
	}

	printf("\nEnter elements of vector B:\n");
	for (i = 0; i < count; ++i) {
		printf("%2d> ", i+1);
		scanf("%d", &value);
		b[i] = value;
	}

	int32_t result = fma_8x8(a, b);
	int32_t expected = cpu_fma_8x8(a, b);

	log_inputs(a, b);

	printf("Expected: %d\n", expected);
	printf("Actual: %d\n", result);

	assert(expected == result);

	return 0;
}


void grid_test_8x8(int dimension, int min_value, int max_value, int8_t a[8], int8_t b[8]) {
	if (dimension == 0) {
		int32_t result;
		int expected;

		result = fma_8x8(a, b);
		expected = cpu_fma_8x8(a, b);

		// Log each iteration
		log_inputs(a, b);
		printf("Result: %d\n", result);
		printf("Expected: %d\n", expected);

		// Stops running if fails
		assert(result == expected);

		return;
	}

	int i;
	for (i = min_value; i < max_value; ++i) {
		if (dimension > 8) {
			b[dimension - 1] = i;
		} else {
			a[dimension - 1] = i;
		}
		grid_test_8x8(dimension - 1, min_value, max_value, a, b);
	}
}


int32_t fma_8x8(int8_t a[8], int8_t b[8]) {
	void *virtual_base;
	int fd;
	int8_t *a0, *a1, *a2, *a3, *a4, *a5, *a6, *a7;
	int8_t *b0, *b1, *b2, *b3, *b4, *b5, *b6, *b7;
	int32_t *out_0;

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

	// Assign address for hardware inputs and output
	a0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_0_BASE) & (unsigned long)(HW_REGS_MASK));
	a1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_1_BASE) & (unsigned long)(HW_REGS_MASK));
	a2 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_2_BASE) & (unsigned long)(HW_REGS_MASK));
	a3 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_3_BASE) & (unsigned long)(HW_REGS_MASK));
	a4 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_4_BASE) & (unsigned long)(HW_REGS_MASK));
	a5 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_5_BASE) & (unsigned long)(HW_REGS_MASK));
	a6 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_6_BASE) & (unsigned long)(HW_REGS_MASK));
	a7 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + A_7_BASE) & (unsigned long)(HW_REGS_MASK));

	b0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_0_BASE) & (unsigned long)(HW_REGS_MASK));
	b1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_1_BASE) & (unsigned long)(HW_REGS_MASK));
	b2 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_2_BASE) & (unsigned long)(HW_REGS_MASK));
	b3 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_3_BASE) & (unsigned long)(HW_REGS_MASK));
	b4 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_4_BASE) & (unsigned long)(HW_REGS_MASK));
	b5 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_5_BASE) & (unsigned long)(HW_REGS_MASK));
	b6 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_6_BASE) & (unsigned long)(HW_REGS_MASK));
	b7 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + B_7_BASE) & (unsigned long)(HW_REGS_MASK));

	out_0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + OUT_0_BASE) & (unsigned long)(HW_REGS_MASK));

	int8_t *hw_input_a[8] = { a0, a1, a2, a3, a4, a5, a6, a7 };
	int8_t *hw_input_b[8] = { b0, b1, b2, b3, b4, b5, b6, b7 };

	// Assign input vectors to hardware inputs
	int i;
	for (i = 0; i < 8; ++i) {
		*hw_input_a[i] = a[i];
		*hw_input_b[i] = b[i];
	}

	int result = *out_0;

	// Close our hardware mmap
	if (munmap(virtual_base, HW_REGS_SPAN) != 0) {
		printf("ERROR: munmap() failed...\n");
		close(fd);
		return 1;
	}

	close(fd);

	return result;
}


int32_t cpu_fma_8x8(int8_t a[8], int8_t b[8]) {
	int32_t result = 0;
	int i;
	for (i = 0; i < 8; i++) {
		result += a[i] * b[i];
	}

	return result;
}


void log_inputs(int8_t a[8], int8_t b[8]) {
	int i;

	// Print inputs
	printf("Calculating:\n");
	for (i = 0; i < 8; ++i) {
		printf("%d * %d", a[i], b[i]);
		if (i < 7) {
			printf(" + ");
		}
	}
	printf("\n");
}
