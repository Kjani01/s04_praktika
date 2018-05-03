/************************************************************************
 *                                                                      *
 *     University of Applied Sciences Munich: Computer Architecture     *
 *                     ADDITIONAL COMMANDS FOR ORPMON                   *
 *                                                                      *
 * -------------------------------------------------------------------- *
 * Version: 1.0
 * Authors:
 * Date:
 * Group:
 * Semester:
 * Additional Notes:
 * -------------------------------------------------------------------- *
 * This file / the orpmon tool are under the GNU General Public License *
 ************************************************************************/

#include "common.h"
#include "spi.h"
#include "support.h"
#include "string.h"

void mips_measurement();
void branch_measurement();

int hmcmd_cmd(int argc, char *argv[])
{
	if (argc == 0) {
		printf("usage:  [no usage information available, yet] \n");
	} else if (argc == 1) {
		if (!strcmp(argv[0], "hello")) {
			printf("Hello from University of Applied Sciences, Munich, Germany! \n");
		} else if (!strcmp(argv[0], "mips")) {
			mips_measurement();	
		} else if (!strcmp(argv[0], "branch")) {
			branch_measurement();
		} else if (!strcmp(argv[0], "cpi_nop")) {
		
			int iterations = 10000000;
			
			//int iterations = strtol(argv[1], NULL, 10);
			//int it = strtol(char*, 0, 0)
			
			printf("CPI NOP TEST with %d iterations\n", iterations);
			printf("TICKS_PER_SECOND %d // IN_CLK %d\n", TICKS_PER_SEC, IN_CLK);
			int i = 0;
			int timebef = timestamp;
			printf(">start @ %d\n", timebef);
			for (i = 0; i < iterations; i++) {
				//printf("loop %d\n", i);
				asm volatile ("l.nop");
			}
			int timeaf = timestamp;
			printf(">stop @ %d\n", timeaf);

			int duration = timeaf - timebef ;
			printf("DURATION: %d\n",duration); 
			
			long cycles = duration / TICKS_PER_SEC;
			cycles = cycles * IN_CLK;
			//cycles = cycles - (4 * iterations);

			printf("THAT TOOK %d CYCLES !!!\n", cycles);
			float cpi = cycles / iterations;
			printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
		}

		else if (!strcmp(argv[0], "cpi_add")) {
		
			int iterations = 10000000;
			
			//int iterations = strtol(argv[1], NULL, 10);
			//int it = strtol(char*, 0, 0)
			
			printf("CPI ADD TEST with %d iterations\n", iterations);
			printf("TICKS_PER_SECOND %d // IN_CLK %d\n", TICKS_PER_SEC, IN_CLK);
			int i = 0;
			int timebef = timestamp;
			printf(">start @ %d\n", timebef);

			//asm volatile ("l.add r7,0,1" ::: "r7");
			//asm volatile ("l.add r8,0,2" ::: "r8");
			for (i = 0; i < iterations; i++) {
				asm volatile ("l.add r9, r7, r8" ::: "r9");
			}
			int timeaf = timestamp;
			printf(">stop @ %d\n", timeaf);

			int duration = timeaf - timebef ;
			printf("DURATION: %d\n",duration); 
			
			long cycles = duration / TICKS_PER_SEC;
			cycles = cycles * IN_CLK;
			//cycles = cycles - (4 * iterations);

			printf("THAT TOOK %d CYCLES !!!\n", cycles);
			float cpi = cycles / iterations;
			printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
		}
		else if (!strcmp(argv[0], "cpi_div")) {
		
			int iterations = 10000000;
			
			//int iterations = strtol(argv[1], NULL, 10);
			//int it = strtol(char*, 0, 0)
			
			printf("CPI DIV TEST with %d iterations\n", iterations);
			printf("TICKS_PER_SECOND %d // IN_CLK %d\n", TICKS_PER_SEC, IN_CLK);
			int i = 0;
			int timebef = timestamp;
			printf(">start @ %d\n", timebef);

			asm volatile ("l.addi r7,r8,10" ::: "r7");
			asm volatile ("l.addi r8,r7,20" ::: "r8");
			for (i = 0; i < iterations; i++) {
				asm volatile ("l.div r9, r7, r8" ::: "r9");
			}
			int timeaf = timestamp;
			printf(">stop @ %d\n", timeaf);

			int duration = timeaf - timebef ;
			printf("DURATION: %d\n",duration); 
			
			long cycles = duration / TICKS_PER_SEC;
			cycles = cycles * IN_CLK;
			//cycles = cycles - (4 * iterations);

			printf("THAT TOOK %d CYCLES !!!\n", cycles);
			float cpi = cycles / iterations;
			printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
		}
else if (!strcmp(argv[0], "cpi_lbz")) {
		
			int iterations = 10000000;
			
			//int iterations = strtol(argv[1], NULL, 10);
			//int it = strtol(char*, 0, 0)
			
			printf("CPI LBZ TEST with %d iterations\n", iterations);
			printf("TICKS_PER_SECOND %d // IN_CLK %d\n", TICKS_PER_SEC, IN_CLK);
			int i = 0;
			int timebef = timestamp;
			printf(">start @ %d\n", timebef);

			//asm volatile ("l.addi r7,r8,10" ::: "r7");
			//asm volatile ("l.addi r8,r7,20" ::: "r8");
			for (i = 0; i < iterations; i++) {
				asm volatile ("l.lbz r9, 1(r8)" ::: "r9");
			}
			int timeaf = timestamp;
			printf(">stop @ %d\n", timeaf);

			int duration = timeaf - timebef ;
			printf("DURATION: %d\n",duration); 
			
			long cycles = duration / TICKS_PER_SEC;
			cycles = cycles * IN_CLK;
			//cycles = cycles - (4 * iterations);

			printf("THAT TOOK %d CYCLES !!!\n", cycles);
			float cpi = cycles / iterations;
			printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
		}
	}
	else if (argc == 2) {
		if (!strcmp(argv[0], "cpi_nop")) {

			char num[100];
			strcpy(num, argv[1]);
			int len = strlen(argv[1]);
			int i;
			int dec = 0;
			for (i = 0; i < len; i++) {
				dec = dec * 10 + (num[i] - '0');
			}

			int iterations = dec;
			
			//int iterations = strtol(argv[1], NULL, 10);
			//int it = strtol(char*, 0, 0)
			
			printf("CPI NOP TEST with %d iterations\n", iterations);
			printf("TICKS_PER_SECOND %d // IN_CLK %d\n", TICKS_PER_SEC, IN_CLK);
			i = 0;
			int timebef = timestamp;
			printf(">start @ %d\n", timebef);
			for (i = 0; i < iterations; i++) {
				//printf("loop %d\n", i);
				asm volatile ("l.nop");
			}
			int timeaf = timestamp;
			printf(">stop @ %d\n", timeaf);

			int duration = timeaf - timebef ;
			printf("DURATION: %d\n",duration); 
			
			long cycles = duration / TICKS_PER_SEC;
			cycles = cycles * IN_CLK;
			//cycles = cycles - (4 * iterations);

			printf("THAT TOOK %d CYCLES !!!\n", cycles);
			float cpi = cycles / iterations;
			printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
		}
	
}
	else {
		printf("Invalid number of arguments!\n");
	}

	return 0;
}

void module_hmcmd_init(void)
{
	register_command("hmcmd", "", "additional commands and tests by University of Applied Sciences Munich", hmcmd_cmd);
}

void mips_measurement()
{
	int iterations = 10000000;

	int a = 2;
	int b = 1;
	int c = 99;
	int d = 10;
	int timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		a = a + b;
		b = b - c;
		c = c * d;
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	int timeaf = timestamp;
	int duration = timeaf - timebef;
	long cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("lololol %d %d %d %d", a, b, c, d);
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n", cycles);
}

void branch_measurement()
{
	// FORWARD TRUE
	int iterations = 10000000;

	asm volatile("l.addi r10,r0,1" ::: "r10");
	int timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile (
		"l.sfeqi r10,1\n"
		"l.bf 1f\n"
		"l.nop\n"
		"l.nop\n"

		"1:\n"
		"l.nop\n"
		);
	}
	int timeaf = timestamp;
	int duration = timeaf - timebef;
	long cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION A) %d\n", duration);
	printf("CYCLES   A) %d\n", cycles);

	float cpi = cycles / iterations;
	printf("CPI: %d.%d%d\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
	
	//FORWARD FALSE
	iterations = 10000000;

	asm volatile("l.addi r10,r0,1" ::: "r10");
	timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile (
		"l.sfeqi r10,2\n"
		"l.bf 1f\n"
		"l.nop\n"
		"l.nop\n"

		"1:\n"
		"l.nop\n"
		);
	}
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION B) %d\n", duration);
	printf("CYCLES   B) %d\n", cycles);

	cpi = cycles / iterations;
	printf("CPI: %d.%d%d\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
	
	// BACK TRUE
	iterations = 100;

	asm volatile("l.addi r10,r0,1" ::: "r10");
	timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile (
		"1:\n"
		"l.nop\n"
		"l.nop\n"
		"l.nop\n"

		"l.sfeqi r10,1\n"
		"l.bf 1b\n"
		"l.nop\n"
		"l.nop\n"
		);
	}
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION C) %d\n", duration);
	printf("CYCLES   C) %d\n", cycles);

	cpi = cycles / iterations;
	printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
 
	// BACK FALSE
	iterations = 10000000;

	asm volatile("l.addi r10,r0,1" ::: "r10");
	timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile (
		"1:\n"
		"l.nop\n"
		"l.nop\n"
		"l.nop\n"

		"l.sfeqi r10,2\n"
		"l.bf 1b\n"
		"l.nop\n"
		"l.nop\n"

		);
	}
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION D) %d\n", duration);
	printf("CYCLES   D) %d\n", cycles);

	cpi = cycles / iterations;
	printf("CPI: %d.%d%d ... maybe?\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
 

}

