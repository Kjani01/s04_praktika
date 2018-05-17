//#include "common.h"
//#include "spi.h"
//#include "support.h"
#include "string.h"

#define NR_ELEMENTS 100
#define NEGMOD 2
#define STRINGI(x) #x
#define STR(x) STRINGI(x)
#define ITERATIONS 10000000

void mips_measurement();
void branch_measurement();
void do_count();
void do_count_cmov();
void do_count_unrolled();
void rawhaz();

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
		} else if (!strcmp(argv[0], "count")) {
			do_count();
		} else if (!strcmp(argv[0], "cmov")) {
			do_count_cmov();
		} else if (!strcmp(argv[0], "unroll")) {
			do_count_unrolled();
		} else if (!strcmp(argv[0], "raw")) {
			rawhaz();
		} else if (!strcmp(argv[0], "cpi_nop")) {
		
			int iterations = ITERATIONS;
			
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
		
			int iterations = ITERATIONS;
			
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
		
			int iterations = ITERATIONS;
			
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
		
			int iterations = ITERATIONS;
			
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
	int iterations = ITERATIONS;

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
	printf("FORWARD TRUE\n");
	int iterations = ITERATIONS;

	int timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile("l.addi r10,r0,1" ::: "r10");
		asm volatile (
		"l.sfeqi r10,1\n"
		"l.bf 1f\n"
		"l.nop\n"
		"l.nop\n"

		"1:\n"
		"l.nop\n":::"r10"
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
	printf("CPI: %d.%d%d\n\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
	
	//FORWARD FALSE
	printf("FORWARD FALSE\n");
	iterations = ITERATIONS;

	timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile("l.addi r10,r0,1" ::: "r10");
		asm volatile (
		"l.sfeqi r10,2\n"
		"l.bf 1f\n"
		"l.nop\n"
		"l.nop\n"

		"1:\n"
		"l.nop\n":::"r10"
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
	printf("CPI: %d.%d%d\n\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
	
	// BACK TRUE
	printf("BACKWARDS TRUE\n");
	iterations = ITERATIONS;

	timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile("l.addi r10,r0,1" ::: "r10");
		asm volatile (
		"1:\n"
		"l.nop\n"
		"l.nop\n"
		"l.nop\n"

		"l.sfeqi r10,1\n"
		"l.bf 1b\n"
		"l.nop\n"
		"l.nop\n":::"r10"
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
	printf("CPI: %d.%d%d ... maybe?\n\n", (long)cpi, ((long)(cpi*10)) % 10, ((long)(cpi*100)) % 10);
 
	// BACK FALSE
	printf("BACKWARDS FALSE\n");
	iterations = ITERATIONS;

	timebef = timestamp;	
	for (int i = 0; i < iterations; i++)
	{
		asm volatile("l.addi r10,r0,1" ::: "r10");
		asm volatile (
		"1:\n"
		"l.nop\n"
		"l.nop\n"
		"l.nop\n"

		"l.sfeqi r10,2\n"
		"l.bf 1b\n"
		"l.nop\n"
		"l.nop\n":::"r10"

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

void do_count()
{

	int iterations = 10000000;

	int input[NR_ELEMENTS];
	int result=0;
	
	for (int i = 0; i < NR_ELEMENTS; i++)
	{
		if (i % NEGMOD == 0)
			input[i] = 1;
		else
			input[i] = -1;
	}
	
	int timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	
	for(int i = 0; i < runs; i++){
		
		asm volatile (
		"l.addi r5,r0,0                     # set r5 to 0 - this is the loop counter\n"
		"l.addi %0,r0,0                     # set result to 0\n"
		"l.addi r6,%1,0                     # put start address of input in r6\n"

		"0:                                 # start of loop\n"
		"l.lwz r7,0(r6)                     # load next value to be checked\n"
		"l.sfgtsi r7,0                      # set flag if >0\n"
		"l.bnf 1f                           # if not positive, cont. loop without incrementing\n"
		"l.addi r6,r6,4                     # increment position in memory (delay slot!)\n"
		"l.addi %0,%0,1                     # increment number of counted positives\n"
		
		"1:                                 # continue loop...\n"
		"l.sfeqi r5, " STR(NR_ELEMENTS-1) " # check if end of loop reached\n"
		"l.bnf 0b                           # if not all iterations are done, do another loop\n"
		"l.addi r5,r5,1                     # increment loop counter (delay slot!)\n"
		: "=r" (result) : "r" (input) : "r5","r6","r7");	
	}
	
	printf("Number of positive elements: %i\n", result);
	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	int timeaf = timestamp;
	int duration = timeaf - timebef;
	long cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n", cycles);
}


void do_count_cmov()
{
	int iterations = 10000000;

	int input[NR_ELEMENTS];
	int result=0;
	
	for (int i = 0; i < NR_ELEMENTS; i++)
	{
		if (i % NEGMOD == 0)
			input[i] = 1;
		else
			input[i] = -1;
	}
	
	int timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	
	for(int i = 0; i < runs; i++){
		
		asm volatile (
		"l.addi r5,r0,0                     # set r5 to 0 - this is the loop counter\n"
		"l.addi %0,r0,0                     # set result to 0\n"
		"l.addi r6,%1,0                     # put start address of input in r6\n"
		"l.addi r8,r0,1                     # r8 is 1\n"

		"0:                                 # start of loop\n"
		"l.lwz r7,0(r6)                     # load next value to be checked\n"
		"l.sfgtsi r7,0                      # set flag if >0\n"
		"l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0\n"
		"l.add %0,%0,r9                     # increment number of counted positives by 1 or 0\n"
		"l.addi r6,r6,4                     # increment position in memory (delay slot!)\n"
		"l.sfeqi r5, " STR(NR_ELEMENTS-1) " # check if end of loop reached\n"
		"l.bnf 0b                           # if not all iterations are done, do another loop\n"
		
		"l.addi r5,r5,1                     # increment loop counter (delay slot!)\n"
		: "=r" (result) : "r" (input) : "r5","r6","r7","r8","r9");	
	}
	
	printf("Number of positive elements: %i\n", result);
	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	int timeaf = timestamp;
	int duration = timeaf - timebef;
	long cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n", cycles);
}

void do_count_unrolled()
{
	int iterations = 10000000;

	int input[NR_ELEMENTS];
	int result=0;
	
	for (int i = 0; i < NR_ELEMENTS; i++)
	{
		if (i % NEGMOD == 0)
			input[i] = 1;
		else
			input[i] = -1;
	}
	
	int timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	
	for(int i = 0; i < ITERATIONS; i++){
		
		asm volatile (
		"l.addi r5,r0,0                     # set r5 to 0 - this is the loop counter\n"
		"l.addi %0,r0,0                     # set result to 0\n"
		"l.addi r6,%1,0                     # put start address of input in r6\n"
		"l.addi r8,r0,1                     # r8 is 1\n"

		"0:                                 # start of loop\n"
		
		"l.lwz r7,0(r6)                     # load next value to be checked\n"
		"l.sfgtsi r7,0                      # set flag if >0\n"
		"l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0\n"
		"l.add %0,%0,r9                     # increment number of counted positives by 1 or 0\n"
		"l.addi r6,r6,1                     # increment position in memory (delay slot!)\n"
		
		"l.lwz r7,0(r6)                     # load next value to be checked\n"
		"l.sfgtsi r7,0                      # set flag if >0\n"
		"l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0\n"
		"l.add %0,%0,r9                     # increment number of counted positives by 1 or 0\n"
		"l.addi r6,r6,1                     # increment position in memory (delay slot!)\n"
		
		"l.lwz r7,0(r6)                     # load next value to be checked\n"
		"l.sfgtsi r7,0                      # set flag if >0\n"
		"l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0\n"
		"l.add %0,%0,r9                     # increment number of counted positives by 1 or 0\n"
		"l.addi r6,r6,1                     # increment position in memory (delay slot!)\n"
		
		"l.lwz r7,0(r6)                     # load next value to be checked\n"
		"l.sfgtsi r7,0                      # set flag if >0\n"
		"l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0\n"
		"l.add %0,%0,r9                     # increment number of counted positives by 1 or 0\n"
		"l.addi r6,r6,1                     # increment position in memory (delay slot!)\n"
		
		"l.sfeqi r5, " STR(NR_ELEMENTS-1) " # check if end of loop reached\n"
		"l.bnf 0b                           # if not all iterations are done, do another loop\n"
		
		"l.addi r5,r5,1                     # increment loop counter (delay slot!)\n"
		: "=r" (result) : "r" (input) : "r5","r6","r7","r8","r9");	
	}
	
	printf("Number of positive elements: %i\n", result);
	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	int timeaf = timestamp;
	int duration = timeaf - timebef;
	long cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n", cycles);
}

void rawhaz()
{
	int iterations = 10000000;

	int timebef = timestamp;
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		asm volatile ("l.add r9, r7, r8" ::: "r9");
		asm volatile ("l.add r10, r9, r8" ::: "r10");
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	int timeaf = timestamp;
	int duration = timeaf - timebef;
	long cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("0 NOPs\n");
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n\n", cycles);
	
	/*-----*/
	
	iterations = 10000000;

	timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		asm volatile ("l.add r9, r7, r8" ::: "r9");
		asm volatile ("l.nop");
		asm volatile ("l.add r10, r9, r8" ::: "r10");
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("1 NOP\n");
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n\n", cycles);
	
	/*-----*/
	
	iterations = 10000000;

	timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		asm volatile ("l.add r9, r7, r8" ::: "r9");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.add r10, r9, r8" ::: "r10");
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("2 NOPs\n")
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n\n", cycles);
	
	/*-----*/
	
	iterations = 10000000;

	timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		asm volatile ("l.add r9, r7, r8" ::: "r9");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.add r10, r9, r8" ::: "r10");
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("3 NOPs\n");
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n\n", cycles);
	
	/*-----*/
	
	iterations = 10000000;

	timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		asm volatile ("l.add r9, r7, r8" ::: "r9");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.add r10, r9, r8" ::: "r10");
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("4 NOPs\n");
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n\n", cycles);
	
	/*-----*/
	
	iterations = 10000000;

	timebef = timestamp;	
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	for (int i = 0; i < iterations; i++)
	{
		asm volatile ("l.add r9, r7, r8" ::: "r9");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.nop");
		asm volatile ("l.add r10, r9, r8" ::: "r10");
	}
	asm volatile ("l.nop");
	asm volatile ("l.nop");
	timeaf = timestamp;
	duration = timeaf - timebef;
	cycles = duration / TICKS_PER_SEC;
	cycles = cycles * IN_CLK;
	cycles = cycles - (4 * iterations);

	printf("5 NOPs\n");
	printf("DURATION: %d\n", duration);
	printf("CYCLES:   %d\n\n", cycles);
}