#define NR_ELEMENTS 100
#define NEGMOD 2
#define STRINGI(x) #x
#define STR(x) STRINGI(x)
void do_count()
{
	int input[NR_ELEMENTS];
	int result=0;
	
	for (int i = 0; i < NR_ELEMENTS; i++)
	{
		if (i % NEGMOD == 0)
			input[i] = 1;
		else
			input[i] = -1;
	}
	
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
	// HIER GGF. WEITEREN CODE EINF‹GEN
}


void do_count_cmov()
{
	int input[NR_ELEMENTS];
	int result=0;
	
	for (int i = 0; i < NR_ELEMENTS; i++)
	{
		if (i % NEGMOD == 0)
			input[i] = 1;
		else
			input[i] = -1;
	}
	
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
	// HIER GGF. WEITEREN CODE EINF‹GEN
}

void do_count_unrolled()
{
	int input[NR_ELEMENTS];
	int result=0;
	
	for (int i = 0; i < NR_ELEMENTS; i++)
	{
		if (i % NEGMOD == 0)
			input[i] = 1;
		else
			input[i] = -1;
	}
	
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
	// HIER GGF. WEITEREN CODE EINF‹GEN
}