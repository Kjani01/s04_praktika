	.file	"hmcmd.c"
	.section .text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"additional commands and tests by University of Applied Sciences Munich"
.LC1:
	.string	""
.LC2:
	.string	"hmcmd"
	.section .text
	.align	4
.proc	module_hmcmd_init
	.global module_hmcmd_init
	.type	module_hmcmd_init, @function
module_hmcmd_init:
.LFB1:
	.file 1 "hmcmd.c"
	.loc 1 216 0
	.cfi_startproc
	l.sw    	-8(r1),r2	 # SI store
	.loc 1 217 0
	l.movhi  	r6,hi(hmcmd_cmd) # movsi_high
	.cfi_offset 2, -8
	.loc 1 216 0
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	.loc 1 217 0
	l.movhi  	r5,hi(.LC0) # movsi_high
	l.movhi  	r4,hi(.LC1) # movsi_high
	l.movhi  	r3,hi(.LC2) # movsi_high
	.loc 1 216 0
	l.sw    	-4(r1),r9	 # SI store
	.loc 1 217 0
	l.ori   	r6,r6,lo(hmcmd_cmd) # movsi_lo_sum
	.loc 1 216 0
	l.addi	r1,r1,-8	# allocate frame
	.cfi_offset 9, -4
	.loc 1 217 0
	l.ori   	r5,r5,lo(.LC0) # movsi_lo_sum
	l.ori   	r4,r4,lo(.LC1) # movsi_lo_sum
	l.jal   	register_command_func# call_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC2) # movsi_lo_sum
.LVL0:
	.loc 1 218 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r2,-8(r1)	 # SI load
	.cfi_endproc
.LFE1:
	.size	module_hmcmd_init, .-module_hmcmd_init
	.section	.rodata.str1.1
.LC3:
	.string	"lololol %d %d %d %d"
.LC4:
	.string	"DURATION: %d\n"
.LC5:
	.string	"CYCLES:   %d\n"
	.section .text
	.align	4
.proc	mips_measurement
	.global mips_measurement
	.type	mips_measurement, @function
mips_measurement:
.LFB2:
	.loc 1 221 0
	.cfi_startproc
.LVL1:
	l.sw    	-8(r1),r2	 # SI store
	.loc 1 228 0
	l.movhi  	r11,hi(timestamp) # movsi_high
	.cfi_offset 2, -8
	.loc 1 221 0
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-12(r1),r18	 # SI store
	l.sw    	-4(r1),r9	 # SI store
	l.sw    	-16(r1),r14	 # SI store
	.loc 1 228 0
	l.ori   	r11,r11,lo(timestamp) # movsi_lo_sum
	.loc 1 221 0
	l.addi	r1,r1,-32	# allocate frame
	.cfi_offset 18, -12
	.cfi_offset 9, -4
	.cfi_offset 14, -16
	.loc 1 228 0
	l.lwz   	r18,0(r11)	 # SI load
.LVL2:
	.loc 1 229 0
#APP
# 229 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 230 0
# 230 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL3:
#NO_APP
	l.movhi 	r3,hi(9961472)	 # move immediate M
	.loc 1 226 0
	l.addi  	r4,r0,99	 # move immediate I
	.loc 1 230 0
	l.ori   	r3,r3,38528 # iorsi3
	.loc 1 225 0
	l.addi  	r5,r0,1	 # move immediate I
	.loc 1 224 0
	l.addi  	r7,r0,2	 # move immediate I
.LVL4:
.L3:
.LBB3:
	.loc 1 235 0 discriminator 3
	l.add   	r6,r4,r4 # addsi3
	l.addi  	r3,r3,-1 # addsi3
	l.slli  	r8,r6,2 # ashlsi3
	.loc 1 231 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	.loc 1 233 0 discriminator 3
	l.add   	r7,r7,r5 # addsi3
.LVL5:
	.loc 1 234 0 discriminator 3
	l.sub   	r5,r5,r4 # subsi3
.LVL6:
	.loc 1 231 0 discriminator 3
	l.bf	.L3	# delay slot filled
	l.add   	r4,r6,r8 # addsi3
.LBE3:
	.loc 1 237 0
#APP
# 237 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 238 0
# 238 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 239 0
#NO_APP
	l.lwz   	r3,0(r11)	 # SI load
.LVL7:
	.loc 1 242 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
	.loc 1 240 0
	l.sub   	r18,r3,r18 # subsi3
.LVL8:
	.loc 1 241 0
	l.addi  	r3,r0,100	 # move immediate I
.LVL9:
	.loc 1 242 0
	l.ori   	r14,r14,61568 # iorsi3
	.loc 1 241 0
	l.div   	r3,r18,r3 # divsi3
.LVL10:
	.loc 1 242 0
	l.mul   	r14,r3,r14 # mulsi3
.LVL11:
	.loc 1 245 0
	l.addi  	r6,r0,10	 # move immediate I
	l.movhi  	r3,hi(.LC3) # movsi_high
	l.sw    	12(r1),r6	 # SI store
	l.sw    	8(r1),r4	 # SI store
	l.sw    	4(r1),r5	 # SI store
	l.sw    	0(r1),r7	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC3) # movsi_lo_sum
.LVL12:
	.loc 1 246 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	l.sw    	0(r1),r18	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL13:
	.loc 1 247 0
	l.movhi 	r3,hi(-40042496)	 # move immediate M
	l.ori   	r3,r3,42496 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL14:
	l.movhi  	r3,hi(.LC5) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC5) # movsi_lo_sum
.LVL15:
	.loc 1 248 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL16:
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
	.cfi_endproc
.LFE2:
	.size	mips_measurement, .-mips_measurement
	.section	.rodata.str1.1
.LC6:
	.string	"FORWARD TRUE\n"
.LC7:
	.string	"DURATION A) %d\n"
.LC8:
	.string	"CYCLES   A) %d\n"
	.global __floatsisf
.LC9:
	.string	"CPI: %d.%d%d\n\n"
	.global __mulsf3
	.global __fixsfsi
.LC12:
	.string	"FORWARD FALSE\n"
.LC13:
	.string	"DURATION B) %d\n"
.LC14:
	.string	"CYCLES   B) %d\n"
.LC15:
	.string	"BACKWARDS TRUE\n"
.LC16:
	.string	"DURATION C) %d\n"
.LC17:
	.string	"CYCLES   C) %d\n"
.LC18:
	.string	"CPI: %d.%d%d ... maybe?\n\n"
.LC19:
	.string	"BACKWARDS FALSE\n"
.LC20:
	.string	"DURATION D) %d\n"
.LC21:
	.string	"CYCLES   D) %d\n"
.LC22:
	.string	"CPI: %d.%d%d ... maybe?\n"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LC10:
	.long	1120403456
	.align	4
.LC11:
	.long	1092616192
	.section .text
	.align	4
.proc	branch_measurement
	.global branch_measurement
	.type	branch_measurement, @function
branch_measurement:
.LFB3:
	.loc 1 251 0
	.cfi_startproc
	l.sw    	-8(r1),r2	 # SI store
	.loc 1 253 0
	l.movhi  	r3,hi(.LC6) # movsi_high
	.cfi_offset 2, -8
	.loc 1 251 0
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-20(r1),r22	 # SI store
	l.sw    	-4(r1),r9	 # SI store
	l.sw    	-32(r1),r14	 # SI store
	l.sw    	-28(r1),r18	 # SI store
	l.sw    	-24(r1),r20	 # SI store
	l.sw    	-16(r1),r24	 # SI store
	l.sw    	-12(r1),r26	 # SI store
	.loc 1 253 0
	l.ori   	r3,r3,lo(.LC6) # movsi_lo_sum
	.loc 1 251 0
	l.addi	r1,r1,-44	# allocate frame
	.cfi_offset 22, -20
	.cfi_offset 9, -4
	.cfi_offset 14, -32
	.cfi_offset 18, -28
	.cfi_offset 20, -24
	.cfi_offset 24, -16
	.cfi_offset 26, -12
	.loc 1 253 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r22,hi(timestamp) # movsi_high
.LVL17:
	.loc 1 256 0
	l.ori   	r22,r22,lo(timestamp) # movsi_lo_sum
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.lwz   	r5,0(r22)	 # SI load
.LVL18:
	l.ori   	r3,r3,38528 # iorsi3
.LVL19:
.L7:
.LBB4:
	.loc 1 259 0 discriminator 3
#APP
# 259 "hmcmd.c" 1
	l.sfeqi r0,0
l.bf 1f
l.nop
l.nop
1:
l.nop

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 257 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L7
	l.nop			# nop delay slot
.LBE4:
	.loc 1 269 0
	l.lwz   	r3,0(r22)	 # SI load
.LVL20:
	.loc 1 271 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 270 0
	l.sub   	r5,r3,r5 # subsi3
.LVL21:
	.loc 1 272 0
	l.movhi 	r26,hi(49938432)	 # move immediate M
	.loc 1 271 0
	l.div   	r4,r5,r4 # divsi3
.LVL22:
	.loc 1 272 0
	l.ori   	r26,r26,61568 # iorsi3
	.loc 1 275 0
	l.movhi  	r3,hi(.LC7) # movsi_high
.LVL23:
	.loc 1 272 0
	l.mul   	r26,r4,r26 # mulsi3
.LVL24:
	.loc 1 273 0
	l.movhi 	r4,hi(-40042496)	 # move immediate M
	.loc 1 275 0
	l.sw    	0(r1),r5	 # SI store
	.loc 1 273 0
	l.ori   	r4,r4,42496 # iorsi3
	.loc 1 275 0
	l.ori   	r3,r3,lo(.LC7) # movsi_lo_sum
.LVL25:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.add   	r26,r26,r4 # addsi3
.LVL26:
	.loc 1 276 0
	l.movhi  	r3,hi(.LC8) # movsi_high
	l.sw    	0(r1),r26	 # SI store
	l.ori   	r3,r3,lo(.LC8) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r20,hi(.LC10) # movsi_high
.LVL27:
	.loc 1 278 0
	l.movhi 	r3,hi(9961472)	 # move immediate M
	.loc 1 279 0
	l.ori   	r20,r20,lo(.LC10) # movsi_lo_sum
	.loc 1 278 0
	l.ori   	r14,r3,38528 # iorsi3
	.loc 1 279 0
	l.addi  	r24,r0,10	 # move immediate I
	.loc 1 278 0
	l.jal   	__floatsisf # call_value_internal	# delay slot filled
	l.div   	r3,r26,r14 # divsi3
.LVL28:
	.loc 1 279 0
	l.lwz   	r4,0(r20)	 # movsf
	l.ori   	r3,r11,0	 # movsf
.LVL29:
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.ori   	r26,r11,0	 # movsf
.LVL30:
	l.ori   	r3,r11,0	 # movsf
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(.LC11) # movsi_high
.LVL31:
	l.div   	r5,r11,r24 # divsi3
	l.add   	r5,r5,r5 # addsi3
	l.ori   	r18,r18,lo(.LC11) # movsi_lo_sum
	l.slli  	r6,r5,2 # ashlsi3
	l.lwz   	r4,0(r18)	 # movsf
	l.add   	r5,r5,r6 # addsi3
	l.ori   	r3,r26,0	 # movsf
	l.sub   	r11,r11,r5 # subsi3
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.sw    	8(r1),r11	 # SI store
.LVL32:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL33:
	l.div   	r24,r11,r24 # divsi3
	l.add   	r24,r24,r24 # addsi3
	l.ori   	r3,r26,0	 # movsf
	l.slli  	r4,r24,2 # ashlsi3
	l.add   	r24,r24,r4 # addsi3
	l.sub   	r11,r11,r24 # subsi3
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.sw    	4(r1),r11	 # SI store
.LVL34:
	l.movhi  	r3,hi(.LC9) # movsi_high
	l.sw    	0(r1),r11	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC9) # movsi_lo_sum
.LVL35:
	.loc 1 282 0
	l.movhi  	r3,hi(.LC12) # movsi_high
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC12) # movsi_lo_sum
.LVL36:
	.loc 1 285 0
	l.lwz   	r5,0(r22)	 # SI load
.LVL37:
	l.ori   	r3,r14,0	 # move reg to reg
.LVL38:
.L8:
.LBB5:
	.loc 1 288 0 discriminator 3
#APP
# 288 "hmcmd.c" 1
	l.sfeqi r0,1
l.bf 1f
l.nop
l.nop
1:
l.nop

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 286 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L8
	l.nop			# nop delay slot
.LBE5:
	.loc 1 298 0
	l.lwz   	r3,0(r22)	 # SI load
.LVL39:
	.loc 1 300 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 299 0
	l.sub   	r5,r3,r5 # subsi3
.LVL40:
	.loc 1 301 0
	l.movhi 	r26,hi(49938432)	 # move immediate M
.LVL41:
	.loc 1 300 0
	l.div   	r4,r5,r4 # divsi3
.LVL42:
	.loc 1 301 0
	l.ori   	r26,r26,61568 # iorsi3
	.loc 1 304 0
	l.movhi  	r3,hi(.LC13) # movsi_high
.LVL43:
	.loc 1 301 0
	l.mul   	r26,r4,r26 # mulsi3
.LVL44:
	.loc 1 302 0
	l.movhi 	r4,hi(-40042496)	 # move immediate M
	.loc 1 304 0
	l.sw    	0(r1),r5	 # SI store
	.loc 1 302 0
	l.ori   	r4,r4,42496 # iorsi3
	.loc 1 304 0
	l.ori   	r3,r3,lo(.LC13) # movsi_lo_sum
.LVL45:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.add   	r26,r26,r4 # addsi3
.LVL46:
	.loc 1 305 0
	l.movhi  	r3,hi(.LC14) # movsi_high
	l.sw    	0(r1),r26	 # SI store
	l.ori   	r3,r3,lo(.LC14) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.addi  	r24,r0,10	 # move immediate I
.LVL47:
	.loc 1 307 0
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r14,r3,38528 # iorsi3
	l.jal   	__floatsisf # call_value_internal	# delay slot filled
	l.div   	r3,r26,r14 # divsi3
.LVL48:
	.loc 1 308 0
	l.lwz   	r4,0(r20)	 # movsf
	l.ori   	r3,r11,0	 # movsf
.LVL49:
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.ori   	r26,r11,0	 # movsf
.LVL50:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL51:
	l.div   	r5,r11,r24 # divsi3
	l.add   	r5,r5,r5 # addsi3
	l.lwz   	r4,0(r18)	 # movsf
	l.slli  	r6,r5,2 # ashlsi3
	l.ori   	r3,r26,0	 # movsf
	l.add   	r5,r5,r6 # addsi3
	l.sub   	r11,r11,r5 # subsi3
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.sw    	8(r1),r11	 # SI store
.LVL52:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL53:
	l.div   	r24,r11,r24 # divsi3
	l.add   	r24,r24,r24 # addsi3
	l.ori   	r3,r26,0	 # movsf
	l.slli  	r4,r24,2 # ashlsi3
	l.add   	r24,r24,r4 # addsi3
	l.sub   	r11,r11,r24 # subsi3
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.sw    	4(r1),r11	 # SI store
.LVL54:
	l.movhi  	r3,hi(.LC9) # movsi_high
	l.sw    	0(r1),r11	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC9) # movsi_lo_sum
.LVL55:
	.loc 1 311 0
	l.movhi  	r3,hi(.LC15) # movsi_high
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC15) # movsi_lo_sum
.LVL56:
	.loc 1 314 0
	l.lwz   	r5,0(r22)	 # SI load
.LVL57:
	l.ori   	r3,r14,0	 # move reg to reg
.LVL58:
.L9:
.LBB6:
	.loc 1 317 0 discriminator 3
#APP
# 317 "hmcmd.c" 1
	1:
l.nop
l.nop
l.nop
l.bf 2f
l.sfeqi r0,0
l.bf 1b
2:
l.nop
l.nop

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 315 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L9
	l.nop			# nop delay slot
.LBE6:
	.loc 1 331 0
	l.lwz   	r3,0(r22)	 # SI load
.LVL59:
	.loc 1 333 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 332 0
	l.sub   	r5,r3,r5 # subsi3
.LVL60:
	.loc 1 334 0
	l.movhi 	r26,hi(49938432)	 # move immediate M
.LVL61:
	.loc 1 333 0
	l.div   	r4,r5,r4 # divsi3
.LVL62:
	.loc 1 334 0
	l.ori   	r26,r26,61568 # iorsi3
	.loc 1 337 0
	l.movhi  	r3,hi(.LC16) # movsi_high
.LVL63:
	.loc 1 334 0
	l.mul   	r26,r4,r26 # mulsi3
.LVL64:
	.loc 1 335 0
	l.movhi 	r4,hi(-40042496)	 # move immediate M
	.loc 1 337 0
	l.sw    	0(r1),r5	 # SI store
	.loc 1 335 0
	l.ori   	r4,r4,42496 # iorsi3
	.loc 1 337 0
	l.ori   	r3,r3,lo(.LC16) # movsi_lo_sum
.LVL65:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.add   	r26,r26,r4 # addsi3
.LVL66:
	.loc 1 338 0
	l.movhi  	r3,hi(.LC17) # movsi_high
	l.sw    	0(r1),r26	 # SI store
	l.ori   	r3,r3,lo(.LC17) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.addi  	r24,r0,10	 # move immediate I
.LVL67:
	.loc 1 340 0
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r14,r3,38528 # iorsi3
	l.jal   	__floatsisf # call_value_internal	# delay slot filled
	l.div   	r3,r26,r14 # divsi3
.LVL68:
	.loc 1 341 0
	l.lwz   	r4,0(r20)	 # movsf
	l.ori   	r3,r11,0	 # movsf
.LVL69:
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.ori   	r26,r11,0	 # movsf
.LVL70:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL71:
	l.div   	r5,r11,r24 # divsi3
	l.add   	r5,r5,r5 # addsi3
	l.lwz   	r4,0(r18)	 # movsf
	l.slli  	r6,r5,2 # ashlsi3
	l.ori   	r3,r26,0	 # movsf
	l.add   	r5,r5,r6 # addsi3
	l.sub   	r11,r11,r5 # subsi3
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.sw    	8(r1),r11	 # SI store
.LVL72:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL73:
	l.div   	r24,r11,r24 # divsi3
	l.add   	r24,r24,r24 # addsi3
	l.ori   	r3,r26,0	 # movsf
	l.slli  	r4,r24,2 # ashlsi3
	l.add   	r24,r24,r4 # addsi3
	l.sub   	r11,r11,r24 # subsi3
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.sw    	4(r1),r11	 # SI store
.LVL74:
	l.movhi  	r3,hi(.LC18) # movsi_high
	l.sw    	0(r1),r11	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC18) # movsi_lo_sum
.LVL75:
	.loc 1 344 0
	l.movhi  	r3,hi(.LC19) # movsi_high
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC19) # movsi_lo_sum
.LVL76:
	.loc 1 347 0
	l.lwz   	r5,0(r22)	 # SI load
.LVL77:
	l.ori   	r3,r14,0	 # move reg to reg
.LVL78:
.L10:
.LBB7:
	.loc 1 350 0 discriminator 3
#APP
# 350 "hmcmd.c" 1
	1:
l.nop
l.nop
l.nop
l.sfeqi r0,1
l.bf 1b
l.nop
l.nop

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 348 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L10
	l.nop			# nop delay slot
.LBE7:
	.loc 1 363 0
	l.lwz   	r3,0(r22)	 # SI load
.LVL79:
	.loc 1 365 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 364 0
	l.sub   	r5,r3,r5 # subsi3
.LVL80:
	.loc 1 366 0
	l.movhi 	r22,hi(49938432)	 # move immediate M
	.loc 1 365 0
	l.div   	r4,r5,r4 # divsi3
.LVL81:
	.loc 1 366 0
	l.ori   	r22,r22,61568 # iorsi3
	.loc 1 369 0
	l.movhi  	r3,hi(.LC20) # movsi_high
.LVL82:
	.loc 1 366 0
	l.mul   	r22,r4,r22 # mulsi3
.LVL83:
	.loc 1 367 0
	l.movhi 	r4,hi(-40042496)	 # move immediate M
	.loc 1 369 0
	l.sw    	0(r1),r5	 # SI store
	.loc 1 367 0
	l.ori   	r4,r4,42496 # iorsi3
	.loc 1 369 0
	l.ori   	r3,r3,lo(.LC20) # movsi_lo_sum
.LVL84:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.add   	r22,r22,r4 # addsi3
.LVL85:
	.loc 1 370 0
	l.movhi  	r3,hi(.LC21) # movsi_high
	l.sw    	0(r1),r22	 # SI store
	l.ori   	r3,r3,lo(.LC21) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.addi  	r14,r0,10	 # move immediate I
.LVL86:
	.loc 1 372 0
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528 # iorsi3
	l.jal   	__floatsisf # call_value_internal	# delay slot filled
	l.div   	r3,r22,r3 # divsi3
.LVL87:
	.loc 1 373 0
	l.lwz   	r4,0(r20)	 # movsf
	l.ori   	r3,r11,0	 # movsf
.LVL88:
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.ori   	r22,r11,0	 # movsf
.LVL89:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL90:
	l.div   	r5,r11,r14 # divsi3
	l.add   	r5,r5,r5 # addsi3
	l.lwz   	r4,0(r18)	 # movsf
	l.slli  	r6,r5,2 # ashlsi3
	l.ori   	r3,r22,0	 # movsf
	l.add   	r5,r5,r6 # addsi3
	l.sub   	r11,r11,r5 # subsi3
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.sw    	8(r1),r11	 # SI store
.LVL91:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL92:
	l.div   	r14,r11,r14 # divsi3
	l.add   	r14,r14,r14 # addsi3
	l.ori   	r3,r22,0	 # movsf
	l.slli  	r4,r14,2 # ashlsi3
	l.add   	r14,r14,r4 # addsi3
	l.sub   	r11,r11,r14 # subsi3
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.sw    	4(r1),r11	 # SI store
.LVL93:
	l.movhi  	r3,hi(.LC22) # movsi_high
	l.sw    	0(r1),r11	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC22) # movsi_lo_sum
.LVL94:
	.loc 1 376 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-32(r1)	 # SI load
	l.lwz   	r18,-28(r1)	 # SI load
	l.lwz   	r20,-24(r1)	 # SI load
	l.lwz   	r22,-20(r1)	 # SI load
.LVL95:
	l.lwz   	r24,-16(r1)	 # SI load
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r26,-12(r1)	 # SI load
	.cfi_endproc
.LFE3:
	.size	branch_measurement, .-branch_measurement
	.section	.rodata.str1.1
.LC23:
	.string	"Number of positive elements: %i\n"
	.section .text
	.align	4
.proc	do_count
	.global do_count
	.type	do_count, @function
do_count:
.LFB4:
	.loc 1 379 0
	.cfi_startproc
.LVL96:
	l.sw    	-8(r1),r2	 # SI store
	.cfi_offset 2, -8
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-4(r1),r9	 # SI store
	l.addi  	r8,r2,-416 # addsi3
	l.sw    	-16(r1),r14	 # SI store
	l.sw    	-12(r1),r18	 # SI store
.LBB8:
	.loc 1 386 0
	l.addi  	r3,r0,0	 # move immediate I
.LBE8:
	.loc 1 379 0
	l.addi	r1,r1,-420	# allocate frame
	.cfi_offset 9, -4
	.cfi_offset 14, -16
	.cfi_offset 18, -12
	l.ori   	r4,r8,0	 # move reg to reg
.LBB9:
	.loc 1 389 0
	l.addi  	r5,r0,-1	 # move immediate I
.LVL97:
.L16:
	.loc 1 386 0 discriminator 2
	l.addi  	r3,r3,1 # addsi3
.LVL98:
	l.sw    	0(r4),r5	 # SI store
	l.sfnei	r3,100 # cmpsi_ne
	.loc 1 388 0 discriminator 2
	l.andi  	r5,r3,3 # andsi3
	.loc 1 386 0 discriminator 2
	l.bnf	.L22	# delay slot filled
	l.addi  	r4,r4,4 # addsi3
.L18:
	.loc 1 388 0
	l.sfnei	r5,0 # cmpsi_ne
	l.bf	.L16	# delay slot filled
	l.addi  	r5,r0,1	 # move immediate I
	.loc 1 389 0
	l.addi  	r5,r0,-1	 # move immediate I
	.loc 1 386 0
	l.addi  	r3,r3,1 # addsi3
.LVL99:
	l.sw    	0(r4),r5	 # SI store
	l.sfnei	r3,100 # cmpsi_ne
	.loc 1 388 0
	l.andi  	r5,r3,3 # andsi3
	.loc 1 386 0
	l.bf	.L18	# delay slot filled
	l.addi  	r4,r4,4 # addsi3
.L22:
.LBE9:
	.loc 1 394 0
	l.movhi  	r14,hi(timestamp) # movsi_high
	l.ori   	r14,r14,lo(timestamp) # movsi_lo_sum
	l.lwz   	r18,0(r14)	 # SI load
.LVL100:
	.loc 1 395 0
#APP
# 395 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 396 0
# 396 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL101:
#NO_APP
	l.movhi 	r3,hi(65536)	 # move immediate M
.LVL102:
	l.ori   	r3,r3,34464 # iorsi3
.LVL103:
.L19:
.LBB10:
	.loc 1 400 0 discriminator 3
#APP
# 400 "hmcmd.c" 1
	l.addi r5,r0,0                     # set r5 to 0 - this is the loop counter
l.addi r4,r0,0                     # set result to 0
l.addi r6,r8,0                     # put start address of input in r6
0:                                 # start of loop
l.lwz r7,0(r6)                     # load next value to be checked
l.sfgtsi r7,0                      # set flag if >0
l.bnf 1f                           # if not positive, cont. loop without incrementing
l.addi r6,r6,4                     # increment position in memory (delay slot!)
l.addi r4,r4,1                     # increment number of counted positives
1:                                 # continue loop...
l.sfeqi r5, 100-1 # check if end of loop reached
l.bnf 0b                           # if not all iterations are done, do another loop
l.addi r5,r5,1                     # increment loop counter (delay slot!)

# 0 "" 2
.LVL104:
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 398 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L19
	l.nop			# nop delay slot
.LBE10:
	.loc 1 419 0
	l.movhi  	r3,hi(.LC23) # movsi_high
	l.sw    	0(r1),r4	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC23) # movsi_lo_sum
.LVL105:
	.loc 1 421 0
#APP
# 421 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 422 0
# 422 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 423 0
#NO_APP
	l.lwz   	r5,0(r14)	 # SI load
.LVL106:
	.loc 1 425 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 424 0
	l.sub   	r5,r5,r18 # subsi3
.LVL107:
	.loc 1 427 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
	.loc 1 425 0
	l.div   	r4,r5,r4 # divsi3
.LVL108:
	.loc 1 427 0
	l.ori   	r14,r14,61568 # iorsi3
	.loc 1 432 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	.loc 1 427 0
	l.mul   	r14,r4,r14 # mulsi3
.LVL109:
	.loc 1 432 0
	l.sw    	0(r1),r5	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL110:
	.loc 1 433 0
	l.movhi 	r3,hi(-458752)	 # move immediate M
	l.ori   	r3,r3,58752 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL111:
	l.movhi  	r3,hi(.LC5) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC5) # movsi_lo_sum
.LVL112:
	.loc 1 434 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL113:
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
	.cfi_endproc
.LFE4:
	.size	do_count, .-do_count
	.align	4
.proc	do_count_cmov
	.global do_count_cmov
	.type	do_count_cmov, @function
do_count_cmov:
.LFB5:
	.loc 1 438 0
	.cfi_startproc
.LVL114:
	l.sw    	-8(r1),r2	 # SI store
	.cfi_offset 2, -8
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-4(r1),r9	 # SI store
	l.addi  	r11,r2,-416 # addsi3
	l.sw    	-16(r1),r14	 # SI store
	l.sw    	-12(r1),r18	 # SI store
.LBB11:
	.loc 1 444 0
	l.addi  	r3,r0,0	 # move immediate I
.LBE11:
	.loc 1 438 0
	l.addi	r1,r1,-420	# allocate frame
	.cfi_offset 9, -4
	.cfi_offset 14, -16
	.cfi_offset 18, -12
	l.ori   	r4,r11,0	 # move reg to reg
.LBB12:
	.loc 1 447 0
	l.addi  	r5,r0,-1	 # move immediate I
.LVL115:
.L24:
	.loc 1 444 0 discriminator 2
	l.addi  	r3,r3,1 # addsi3
.LVL116:
	l.sw    	0(r4),r5	 # SI store
	l.sfnei	r3,100 # cmpsi_ne
	.loc 1 446 0 discriminator 2
	l.andi  	r5,r3,3 # andsi3
	.loc 1 444 0 discriminator 2
	l.bnf	.L30	# delay slot filled
	l.addi  	r4,r4,4 # addsi3
.L26:
	.loc 1 446 0
	l.sfnei	r5,0 # cmpsi_ne
	l.bf	.L24	# delay slot filled
	l.addi  	r5,r0,1	 # move immediate I
	.loc 1 447 0
	l.addi  	r5,r0,-1	 # move immediate I
	.loc 1 444 0
	l.addi  	r3,r3,1 # addsi3
.LVL117:
	l.sw    	0(r4),r5	 # SI store
	l.sfnei	r3,100 # cmpsi_ne
	.loc 1 446 0
	l.andi  	r5,r3,3 # andsi3
	.loc 1 444 0
	l.bf	.L26	# delay slot filled
	l.addi  	r4,r4,4 # addsi3
.L30:
.LBE12:
	.loc 1 452 0
	l.movhi  	r14,hi(timestamp) # movsi_high
	l.ori   	r14,r14,lo(timestamp) # movsi_lo_sum
	l.lwz   	r18,0(r14)	 # SI load
.LVL118:
	.loc 1 453 0
#APP
# 453 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 454 0
# 454 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL119:
#NO_APP
	l.movhi 	r3,hi(65536)	 # move immediate M
.LVL120:
	l.ori   	r3,r3,34464 # iorsi3
.LVL121:
.L27:
.LBB13:
	.loc 1 458 0 discriminator 3
#APP
# 458 "hmcmd.c" 1
	l.addi r5,r0,0                     # set r5 to 0 - this is the loop counter
l.addi r4,r0,0                     # set result to 0
l.addi r6,r11,0                     # put start address of input in r6
l.addi r8,r0,1                     # r8 is 1
0:                                 # start of loop
l.lwz r7,0(r6)                     # load next value to be checked
l.sfgtsi r7,0                      # set flag if >0
l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0
l.add r4,r4,r9                     # increment number of counted positives by 1 or 0
l.addi r6,r6,4                     # increment position in memory (delay slot!)
l.sfeqi r5, 100-1 # check if end of loop reached
l.bnf 0b                           # if not all iterations are done, do another loop
l.addi r5,r5,1                     # increment loop counter (delay slot!)

# 0 "" 2
.LVL122:
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 456 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L27
	l.nop			# nop delay slot
.LBE13:
	.loc 1 477 0
	l.movhi  	r3,hi(.LC23) # movsi_high
	l.sw    	0(r1),r4	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC23) # movsi_lo_sum
.LVL123:
	.loc 1 479 0
#APP
# 479 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 480 0
# 480 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 481 0
#NO_APP
	l.lwz   	r5,0(r14)	 # SI load
.LVL124:
	.loc 1 483 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 482 0
	l.sub   	r5,r5,r18 # subsi3
.LVL125:
	.loc 1 484 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
	.loc 1 483 0
	l.div   	r4,r5,r4 # divsi3
.LVL126:
	.loc 1 484 0
	l.ori   	r14,r14,61568 # iorsi3
	.loc 1 487 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	.loc 1 484 0
	l.mul   	r14,r4,r14 # mulsi3
.LVL127:
	.loc 1 487 0
	l.sw    	0(r1),r5	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL128:
	.loc 1 488 0
	l.movhi 	r3,hi(-458752)	 # move immediate M
	l.ori   	r3,r3,58752 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL129:
	l.movhi  	r3,hi(.LC5) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC5) # movsi_lo_sum
.LVL130:
	.loc 1 489 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL131:
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
	.cfi_endproc
.LFE5:
	.size	do_count_cmov, .-do_count_cmov
	.align	4
.proc	do_count_unrolled
	.global do_count_unrolled
	.type	do_count_unrolled, @function
do_count_unrolled:
.LFB6:
	.loc 1 492 0
	.cfi_startproc
.LVL132:
	l.sw    	-8(r1),r2	 # SI store
	.cfi_offset 2, -8
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-4(r1),r9	 # SI store
	l.addi  	r11,r2,-416 # addsi3
	l.sw    	-16(r1),r14	 # SI store
	l.sw    	-12(r1),r18	 # SI store
.LBB14:
	.loc 1 498 0
	l.addi  	r3,r0,0	 # move immediate I
.LBE14:
	.loc 1 492 0
	l.addi	r1,r1,-420	# allocate frame
	.cfi_offset 9, -4
	.cfi_offset 14, -16
	.cfi_offset 18, -12
	l.ori   	r4,r11,0	 # move reg to reg
.LBB15:
	.loc 1 501 0
	l.addi  	r5,r0,-1	 # move immediate I
.LVL133:
.L32:
	.loc 1 498 0 discriminator 2
	l.addi  	r3,r3,1 # addsi3
.LVL134:
	l.sw    	0(r4),r5	 # SI store
	l.sfnei	r3,100 # cmpsi_ne
	.loc 1 500 0 discriminator 2
	l.andi  	r5,r3,3 # andsi3
	.loc 1 498 0 discriminator 2
	l.bnf	.L38	# delay slot filled
	l.addi  	r4,r4,4 # addsi3
.L34:
	.loc 1 500 0
	l.sfnei	r5,0 # cmpsi_ne
	l.bf	.L32	# delay slot filled
	l.addi  	r5,r0,1	 # move immediate I
	.loc 1 501 0
	l.addi  	r5,r0,-1	 # move immediate I
	.loc 1 498 0
	l.addi  	r3,r3,1 # addsi3
.LVL135:
	l.sw    	0(r4),r5	 # SI store
	l.sfnei	r3,100 # cmpsi_ne
	.loc 1 500 0
	l.andi  	r5,r3,3 # andsi3
	.loc 1 498 0
	l.bf	.L34	# delay slot filled
	l.addi  	r4,r4,4 # addsi3
.L38:
.LBE15:
	.loc 1 506 0
	l.movhi  	r14,hi(timestamp) # movsi_high
	l.ori   	r14,r14,lo(timestamp) # movsi_lo_sum
	l.lwz   	r18,0(r14)	 # SI load
.LVL136:
	.loc 1 507 0
#APP
# 507 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 508 0
# 508 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL137:
#NO_APP
	l.movhi 	r3,hi(65536)	 # move immediate M
.LVL138:
	l.ori   	r3,r3,34464 # iorsi3
.LVL139:
.L35:
.LBB16:
	.loc 1 512 0 discriminator 3
#APP
# 512 "hmcmd.c" 1
	l.addi r5,r0,0                     # set r5 to 0 - this is the loop counter
l.addi r4,r0,0                     # set result to 0
l.addi r6,r11,0                     # put start address of input in r6
l.addi r8,r0,1                     # r8 is 1
0:                                 # start of loop
l.lwz r7,0(r6)                     # load next value to be checked
l.sfgtsi r7,0                      # set flag if >0
l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0
l.add r4,r4,r9                     # increment number of counted positives by 1 or 0
l.lwz r7,4(r6)                     # load next value to be checked
l.sfgtsi r7,0                      # set flag if >0
l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0
l.add r4,r4,r9                     # increment number of counted positives by 1 or 0
l.lwz r7,8(r6)                     # load next value to be checked
l.sfgtsi r7,0                      # set flag if >0
l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0
l.add r4,r4,r9                     # increment number of counted positives by 1 or 0
l.lwz r7,12(r6)                     # load next value to be checked
l.sfgtsi r7,0                      # set flag if >0
l.cmov r9,r8,r0                    # r9 is 1 if r7 was >0, else 0
l.add r4,r4,r9                     # increment number of counted positives by 1 or 0
l.addi r6,r6,16                     # increment position in memory (delay slot!)
l.sfeqi r5, 100-4 # check if end of loop reached
l.bnf 0b                           # if not all iterations are done, do another loop
l.addi r5,r5,4                     # increment loop counter (delay slot!)

# 0 "" 2
.LVL140:
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 510 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L35
	l.nop			# nop delay slot
.LBE16:
	.loc 1 548 0
	l.movhi  	r3,hi(.LC23) # movsi_high
	l.sw    	0(r1),r4	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC23) # movsi_lo_sum
.LVL141:
	.loc 1 550 0
#APP
# 550 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 551 0
# 551 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 552 0
#NO_APP
	l.lwz   	r5,0(r14)	 # SI load
.LVL142:
	.loc 1 554 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 553 0
	l.sub   	r5,r5,r18 # subsi3
.LVL143:
	.loc 1 556 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
	.loc 1 554 0
	l.div   	r4,r5,r4 # divsi3
.LVL144:
	.loc 1 556 0
	l.ori   	r14,r14,61568 # iorsi3
	.loc 1 561 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	.loc 1 556 0
	l.mul   	r14,r4,r14 # mulsi3
.LVL145:
	.loc 1 561 0
	l.sw    	0(r1),r5	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL146:
	.loc 1 562 0
	l.movhi 	r3,hi(-458752)	 # move immediate M
	l.ori   	r3,r3,58752 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL147:
	l.movhi  	r3,hi(.LC5) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC5) # movsi_lo_sum
.LVL148:
	.loc 1 563 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL149:
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
	.cfi_endproc
.LFE6:
	.size	do_count_unrolled, .-do_count_unrolled
	.section	.rodata.str1.1
.LC24:
	.string	"WITHOUT HAZARD\n"
.LC25:
	.string	"CYCLES:   %d\n\n"
.LC26:
	.string	"WITH HAZARD\n"
	.section .text
	.align	4
.proc	rawhaz
	.global rawhaz
	.type	rawhaz, @function
rawhaz:
.LFB7:
	.loc 1 566 0
	.cfi_startproc
.LVL150:
	l.sw    	-8(r1),r2	 # SI store
	l.sw    	-16(r1),r18	 # SI store
	.cfi_offset 2, -8
	.cfi_offset 18, -16
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	.loc 1 569 0
	l.movhi  	r18,hi(timestamp) # movsi_high
	.loc 1 566 0
	l.sw    	-12(r1),r20	 # SI store
	l.sw    	-4(r1),r9	 # SI store
	l.sw    	-20(r1),r14	 # SI store
	.loc 1 569 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 566 0
	l.addi	r1,r1,-24	# allocate frame
	.cfi_offset 20, -12
	.cfi_offset 9, -4
	.cfi_offset 14, -20
	.loc 1 569 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL151:
	.loc 1 570 0
#APP
# 570 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 571 0
# 571 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL152:
#NO_APP
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528 # iorsi3
.LVL153:
.L40:
.LBB17:
	.loc 1 574 0 discriminator 3
#APP
# 574 "hmcmd.c" 1
	l.add r9, r7, r8
# 0 "" 2
	.loc 1 575 0 discriminator 3
# 575 "hmcmd.c" 1
	l.add r10, r7, r8
# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 572 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L40
	l.nop			# nop delay slot
.LBE17:
	.loc 1 577 0
#APP
# 577 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 578 0
# 578 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 579 0
#NO_APP
	l.lwz   	r3,0(r18)	 # SI load
.LVL154:
	.loc 1 581 0
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 580 0
	l.sub   	r20,r3,r20 # subsi3
.LVL155:
	.loc 1 582 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
	.loc 1 581 0
	l.div   	r4,r20,r4 # divsi3
.LVL156:
	.loc 1 582 0
	l.ori   	r14,r14,61568 # iorsi3
	.loc 1 585 0
	l.movhi  	r3,hi(.LC24) # movsi_high
.LVL157:
	.loc 1 582 0
	l.mul   	r14,r4,r14 # mulsi3
.LVL158:
	.loc 1 585 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC24) # movsi_lo_sum
.LVL159:
	.loc 1 586 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	l.sw    	0(r1),r20	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL160:
	.loc 1 587 0
	l.movhi 	r3,hi(-40042496)	 # move immediate M
	l.ori   	r3,r3,42496 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL161:
	l.movhi  	r3,hi(.LC25) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC25) # movsi_lo_sum
.LVL162:
	.loc 1 593 0
	l.lwz   	r4,0(r18)	 # SI load
.LVL163:
	.loc 1 594 0
#APP
# 594 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 595 0
# 595 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL164:
#NO_APP
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528 # iorsi3
.LVL165:
.L41:
.LBB18:
	.loc 1 598 0 discriminator 3
#APP
# 598 "hmcmd.c" 1
	l.add r9, r7, r8
# 0 "" 2
	.loc 1 599 0 discriminator 3
# 599 "hmcmd.c" 1
	l.add r10, r9, r8
# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 596 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L41
	l.nop			# nop delay slot
.LBE18:
	.loc 1 601 0
#APP
# 601 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 602 0
# 602 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 603 0
#NO_APP
	l.lwz   	r3,0(r18)	 # SI load
.LVL166:
	.loc 1 606 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
.LVL167:
	.loc 1 604 0
	l.sub   	r18,r3,r4 # subsi3
.LVL168:
	.loc 1 605 0
	l.addi  	r4,r0,100	 # move immediate I
.LVL169:
	.loc 1 606 0
	l.ori   	r14,r14,61568 # iorsi3
.LVL170:
	.loc 1 605 0
	l.div   	r4,r18,r4 # divsi3
.LVL171:
	.loc 1 606 0
	l.mul   	r14,r4,r14 # mulsi3
.LVL172:
	.loc 1 609 0
	l.movhi  	r3,hi(.LC26) # movsi_high
.LVL173:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC26) # movsi_lo_sum
.LVL174:
	.loc 1 610 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	l.sw    	0(r1),r18	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL175:
	.loc 1 611 0
	l.movhi 	r3,hi(-40042496)	 # move immediate M
	l.ori   	r3,r3,42496 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL176:
	l.movhi  	r3,hi(.LC25) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC25) # movsi_lo_sum
.LVL177:
	.loc 1 747 0
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
.LVL178:
	l.lwz   	r18,-16(r1)	 # SI load
.LVL179:
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r20,-12(r1)	 # SI load
	.cfi_endproc
.LFE7:
	.size	rawhaz, .-rawhaz
	.section	.rodata.str1.1
.LC27:
	.string	"usage:  [no usage information available, yet] \n"
.LC28:
	.string	"hello"
.LC29:
	.string	"Hello from University of Applied Sciences, Munich, Germany! \n"
.LC30:
	.string	"mips"
.LC31:
	.string	"branch"
.LC32:
	.string	"count"
.LC33:
	.string	"cmov"
.LC34:
	.string	"unroll"
.LC35:
	.string	"raw"
.LC36:
	.string	"cpi_nop"
.LC37:
	.string	"CPI NOP TEST with %d iterations\n"
.LC38:
	.string	"TICKS_PER_SECOND %d // IN_CLK %d\n"
.LC39:
	.string	">start @ %d\n"
.LC40:
	.string	">stop @ %d\n"
.LC41:
	.string	"THAT TOOK %d CYCLES !!!\n"
.LC44:
	.string	"cpi_add"
.LC45:
	.string	"CPI ADD TEST with %d iterations\n"
.LC46:
	.string	"cpi_div"
.LC47:
	.string	"CPI DIV TEST with %d iterations\n"
.LC48:
	.string	"cpi_lbz"
.LC49:
	.string	"CPI LBZ TEST with %d iterations\n"
.LC50:
	.string	"Invalid number of arguments!\n"
	.section	.rodata.cst4
	.align	4
.LC42:
	.long	1120403456
	.align	4
.LC43:
	.long	1092616192
	.section .text
	.align	4
.proc	hmcmd_cmd
	.global hmcmd_cmd
	.type	hmcmd_cmd, @function
hmcmd_cmd:
.LFB0:
	.loc 1 20 0
	.cfi_startproc
.LVL180:
	l.sw    	-8(r1),r2	 # SI store
	.cfi_offset 2, -8
	l.addi  	r2,r1,0 # addsi3
	.cfi_def_cfa_register 2
	l.sw    	-20(r1),r14	 # SI store
	l.sw    	-16(r1),r18	 # SI store
	l.sw    	-4(r1),r9	 # SI store
	l.sw    	-12(r1),r20	 # SI store
	.loc 1 21 0
	l.sfnei	r3,0 # cmpsi_ne
	.loc 1 20 0
	l.addi	r1,r1,-136	# allocate frame
	.cfi_offset 14, -20
	.cfi_offset 18, -16
	.cfi_offset 9, -4
	.cfi_offset 20, -12
	.loc 1 20 0
	l.ori   	r14,r3,0	 # move reg to reg
	.loc 1 21 0
	l.bnf	.L80	# delay slot filled
	l.ori   	r18,r4,0	 # move reg to reg
	.loc 1 23 0
	l.sfnei	r3,1 # cmpsi_ne
	l.bnf	.L81	# delay slot filled
	l.sfnei	r3,2 # cmpsi_ne
	.loc 1 166 0
	l.bnf	.L82	# delay slot filled
	l.movhi  	r3,hi(.LC50) # movsi_high
.LVL181:
	.loc 1 209 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC50) # movsi_lo_sum
.LVL182:
.L70:
	.loc 1 213 0
	l.ori	r1,r2,0	# deallocate frame
.L90:
	l.addi  	r11,r0,0	 # move immediate I
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
	l.lwz   	r18,-16(r1)	 # SI load
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r20,-12(r1)	 # SI load
.LVL183:
.L80:
	.loc 1 22 0
	l.movhi  	r3,hi(.LC27) # movsi_high
.LVL184:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC27) # movsi_lo_sum
.LVL185:
	.loc 1 213 0
	l.ori	r1,r2,0	# deallocate frame
	l.addi  	r11,r0,0	 # move immediate I
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
.LVL186:
	l.lwz   	r18,-16(r1)	 # SI load
.LVL187:
	l.jr    	r9	# return_internal	# delay slot filled
	l.lwz   	r20,-12(r1)	 # SI load
.LVL188:
.L82:
	.loc 1 167 0
	l.movhi  	r4,hi(.LC36) # movsi_high
.LVL189:
	l.lwz   	r3,0(r18)	 # SI load
.LVL190:
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC36) # movsi_lo_sum
.LVL191:
	l.sfnei	r11,0 # cmpsi_ne
.LVL192:
	l.bf	.L70	# delay slot filled
	l.ori   	r14,r11,0	 # move reg to reg
.LBB27:
	.loc 1 170 0
	l.lwz   	r4,4(r18)	 # SI load
	l.jal   	strcpy # call_value_internal	# delay slot filled
	l.addi  	r3,r2,-120 # addsi3
.LVL193:
	.loc 1 171 0
	l.jal   	strlen # call_value_internal	# delay slot filled
	l.lwz   	r3,4(r18)	 # SI load
.LVL194:
	.loc 1 174 0
	l.sflesi	r11,0 # cmpsi_le
	l.bf	.L66	# delay slot filled
	l.movhi  	r3,hi(.LC37) # movsi_high
	l.addi  	r3,r2,-120 # addsi3
	l.add   	r6,r3,r11 # addsi3
.LVL195:
.L67:
	.loc 1 175 0 discriminator 3
	l.add   	r14,r14,r14 # addsi3
.LVL196:
	l.lbs   	r5,0(r3)	 # extendqisi2_no_sext_mem
	l.slli  	r4,r14,2 # ashlsi3
	l.addi  	r3,r3,1 # addsi3
.LVL197:
	l.addi  	r5,r5,-48 # addsi3
	l.add   	r14,r14,r4 # addsi3
	.loc 1 174 0 discriminator 3
	l.sfne 	r3,r6 # cmpsi_ne
.LVL198:
	l.bf	.L67	# delay slot filled
	l.add   	r14,r5,r14 # addsi3
.LVL199:
	.loc 1 183 0
	l.movhi  	r3,hi(.LC37) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.ori   	r3,r3,lo(.LC37) # movsi_lo_sum
.LVL200:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL201:
	.loc 1 184 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	l.movhi  	r3,hi(.LC38) # movsi_high
	l.ori   	r4,r4,61568 # iorsi3
	l.ori   	r3,r3,lo(.LC38) # movsi_lo_sum
	l.sw    	4(r1),r4	 # SI store
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 186 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 184 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL202:
	.loc 1 187 0
	l.movhi  	r3,hi(.LC39) # movsi_high
	.loc 1 186 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL203:
	.loc 1 187 0
	l.ori   	r3,r3,lo(.LC39) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL204:
	.loc 1 188 0
	l.sflesi	r14,0 # cmpsi_le
	l.bf	.L68
	l.nop			# nop delay slot
	.loc 1 188 0 is_stmt 0 discriminator 3
	l.addi  	r3,r0,0	 # move immediate I
.LVL205:
.L69:
	.loc 1 190 0 is_stmt 1 discriminator 3
#APP
# 190 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 188 0 discriminator 3
#NO_APP
	l.addi  	r3,r3,1 # addsi3
.LVL206:
	l.sfne 	r14,r3 # cmpsi_ne
	l.bf	.L69
	l.nop			# nop delay slot
.LVL207:
.L68:
	.loc 1 192 0
	l.lwz   	r4,0(r18)	 # SI load
.LVL208:
	.loc 1 193 0
	l.movhi  	r3,hi(.LC40) # movsi_high
	l.sw    	0(r1),r4	 # SI store
	l.ori   	r3,r3,lo(.LC40) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sub   	r18,r4,r20 # subsi3
.LVL209:
	.loc 1 196 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	l.sw    	0(r1),r18	 # SI store
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL210:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.addi  	r20,r0,10	 # move immediate I
.LVL211:
	.loc 1 198 0
	l.addi  	r3,r0,100	 # move immediate I
	.loc 1 199 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	.loc 1 198 0
	l.div   	r18,r18,r3 # divsi3
.LVL212:
	.loc 1 199 0
	l.ori   	r4,r4,61568 # iorsi3
	.loc 1 202 0
	l.movhi  	r3,hi(.LC41) # movsi_high
	.loc 1 199 0
	l.mul   	r18,r18,r4 # mulsi3
.LVL213:
	.loc 1 202 0
	l.ori   	r3,r3,lo(.LC41) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r18	 # SI store
.LVL214:
	.loc 1 203 0
	l.jal   	__floatsisf # call_value_internal	# delay slot filled
	l.div   	r3,r18,r14 # divsi3
.LVL215:
	.loc 1 204 0
	l.movhi  	r4,hi(.LC42) # movsi_high
	l.ori   	r3,r11,0	 # movsf
	l.ori   	r4,r4,lo(.LC42) # movsi_lo_sum
	.loc 1 203 0
	l.ori   	r14,r11,0	 # movsf
.LVL216:
	.loc 1 204 0
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.lwz   	r4,0(r4)	 # movsf
.LVL217:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL218:
	l.div   	r5,r11,r20 # divsi3
	l.add   	r5,r5,r5 # addsi3
	l.movhi  	r3,hi(.LC43) # movsi_high
	l.slli  	r6,r5,2 # ashlsi3
	l.ori   	r3,r3,lo(.LC43) # movsi_lo_sum
	l.add   	r5,r5,r6 # addsi3
	l.lwz   	r4,0(r3)	 # movsf
	l.sub   	r11,r11,r5 # subsi3
	l.ori   	r3,r14,0	 # movsf
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.sw    	8(r1),r11	 # SI store
.LVL219:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL220:
	l.div   	r20,r11,r20 # divsi3
	l.add   	r20,r20,r20 # addsi3
	l.ori   	r3,r14,0	 # movsf
	l.slli  	r4,r20,2 # ashlsi3
	l.add   	r20,r20,r4 # addsi3
	l.sub   	r11,r11,r20 # subsi3
.LVL221:
.L78:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.sw    	4(r1),r11	 # SI store
.LVL222:
	l.movhi  	r3,hi(.LC22) # movsi_high
	l.sw    	0(r1),r11	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC22) # movsi_lo_sum
.LVL223:
.LBE27:
	.loc 1 213 0
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL224:
.L81:
	.loc 1 24 0
	l.movhi  	r4,hi(.LC28) # movsi_high
.LVL225:
	l.lwz   	r3,0(r18)	 # SI load
.LVL226:
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC28) # movsi_lo_sum
.LVL227:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L83	# delay slot filled
	l.movhi  	r4,hi(.LC30) # movsi_high
	.loc 1 26 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC30) # movsi_lo_sum
.LVL228:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L84
	l.nop			# nop delay slot
	.loc 1 28 0
	l.movhi  	r4,hi(.LC31) # movsi_high
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC31) # movsi_lo_sum
.LVL229:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L85	# delay slot filled
	l.movhi  	r4,hi(.LC32) # movsi_high
	.loc 1 30 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC32) # movsi_lo_sum
.LVL230:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L86	# delay slot filled
	l.movhi  	r4,hi(.LC33) # movsi_high
	.loc 1 32 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC33) # movsi_lo_sum
.LVL231:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L87	# delay slot filled
	l.movhi  	r4,hi(.LC34) # movsi_high
	.loc 1 34 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC34) # movsi_lo_sum
.LVL232:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L88	# delay slot filled
	l.movhi  	r4,hi(.LC35) # movsi_high
	.loc 1 36 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC35) # movsi_lo_sum
.LVL233:
	l.sfnei	r11,0 # cmpsi_ne
	l.bnf	.L89	# delay slot filled
	l.movhi  	r4,hi(.LC36) # movsi_high
	.loc 1 38 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC36) # movsi_lo_sum
.LVL234:
	l.sfnei	r11,0 # cmpsi_ne
	l.bf	.L56	# delay slot filled
	l.movhi  	r4,hi(.LC44) # movsi_high
.LVL235:
.LBB28:
	.loc 1 45 0
	l.movhi 	r14,hi(9961472)	 # move immediate M
.LVL236:
	l.movhi  	r3,hi(.LC37) # movsi_high
	l.ori   	r14,r14,38528 # iorsi3
	l.ori   	r3,r3,lo(.LC37) # movsi_lo_sum
	l.sw    	0(r1),r14	 # SI store
.LVL237:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL238:
	.loc 1 46 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	l.movhi  	r3,hi(.LC38) # movsi_high
	l.ori   	r4,r4,61568 # iorsi3
	l.ori   	r3,r3,lo(.LC38) # movsi_lo_sum
	l.sw    	4(r1),r4	 # SI store
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 48 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 46 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL239:
	.loc 1 49 0
	l.movhi  	r3,hi(.LC39) # movsi_high
	.loc 1 48 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL240:
	.loc 1 49 0
	l.ori   	r3,r3,lo(.LC39) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL241:
	l.ori   	r3,r14,0	 # move reg to reg
.LVL242:
.L57:
	.loc 1 52 0 discriminator 3
#APP
# 52 "hmcmd.c" 1
	l.nop
# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 50 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L57
	l.nop			# nop delay slot
.LVL243:
.L79:
.LBE28:
.LBB29:
	.loc 1 151 0
	l.lwz   	r4,0(r18)	 # SI load
.LVL244:
	.loc 1 152 0
	l.movhi  	r3,hi(.LC40) # movsi_high
	l.sw    	0(r1),r4	 # SI store
	l.ori   	r3,r3,lo(.LC40) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sub   	r14,r4,r20 # subsi3
.LVL245:
	.loc 1 155 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.addi  	r18,r0,10	 # move immediate I
.LVL246:
	.loc 1 157 0
	l.addi  	r3,r0,100	 # move immediate I
	.loc 1 158 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	.loc 1 157 0
	l.div   	r14,r14,r3 # divsi3
.LVL247:
	.loc 1 158 0
	l.ori   	r4,r4,61568 # iorsi3
	.loc 1 161 0
	l.movhi  	r3,hi(.LC41) # movsi_high
	.loc 1 158 0
	l.mul   	r14,r14,r4 # mulsi3
.LVL248:
	.loc 1 161 0
	l.ori   	r3,r3,lo(.LC41) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LVL249:
	.loc 1 162 0
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528 # iorsi3
	l.jal   	__floatsisf # call_value_internal	# delay slot filled
	l.div   	r3,r14,r3 # divsi3
.LVL250:
	.loc 1 163 0
	l.movhi  	r4,hi(.LC42) # movsi_high
	l.ori   	r3,r11,0	 # movsf
	l.ori   	r4,r4,lo(.LC42) # movsi_lo_sum
	.loc 1 162 0
	l.ori   	r14,r11,0	 # movsf
.LVL251:
	.loc 1 163 0
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.lwz   	r4,0(r4)	 # movsf
.LVL252:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL253:
	l.div   	r5,r11,r18 # divsi3
	l.add   	r5,r5,r5 # addsi3
	l.movhi  	r3,hi(.LC43) # movsi_high
	l.slli  	r6,r5,2 # ashlsi3
	l.ori   	r3,r3,lo(.LC43) # movsi_lo_sum
	l.add   	r5,r5,r6 # addsi3
	l.lwz   	r4,0(r3)	 # movsf
	l.sub   	r11,r11,r5 # subsi3
	l.ori   	r3,r14,0	 # movsf
	l.jal   	__mulsf3 # call_value_internal	# delay slot filled
	l.sw    	8(r1),r11	 # SI store
.LVL254:
	l.jal   	__fixsfsi # call_value_internal	# delay slot filled
	l.ori   	r3,r11,0	 # movsf
.LVL255:
	l.div   	r18,r11,r18 # divsi3
	l.add   	r18,r18,r18 # addsi3
	l.ori   	r3,r14,0	 # movsf
	l.slli  	r4,r18,2 # ashlsi3
	l.add   	r18,r18,r4 # addsi3
.LBE29:
	l.j     	.L78 # jump_internal	# delay slot filled
	l.sub   	r11,r11,r18 # subsi3
.LVL256:
.L84:
.LBB30:
.LBB31:
	.loc 1 228 0
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL257:
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	l.lwz   	r11,0(r18)	 # SI load
.LVL258:
	.loc 1 229 0
#APP
# 229 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 230 0
# 230 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL259:
#NO_APP
	l.movhi 	r5,hi(9961472)	 # move immediate M
	.loc 1 226 0
	l.addi  	r4,r0,99	 # move immediate I
	.loc 1 230 0
	l.ori   	r5,r5,38528 # iorsi3
	.loc 1 225 0
	l.ori   	r3,r14,0	 # move reg to reg
	.loc 1 224 0
	l.addi  	r7,r0,2	 # move immediate I
.LVL260:
.L50:
.LBB32:
	.loc 1 235 0
	l.add   	r6,r4,r4 # addsi3
	l.addi  	r5,r5,-1 # addsi3
	l.slli  	r8,r6,2 # ashlsi3
	.loc 1 231 0
	l.sfnei	r5,0 # cmpsi_ne
	.loc 1 233 0
	l.add   	r7,r7,r3 # addsi3
.LVL261:
	.loc 1 234 0
	l.sub   	r3,r3,r4 # subsi3
.LVL262:
	.loc 1 231 0
	l.bf	.L50	# delay slot filled
	l.add   	r4,r6,r8 # addsi3
.LBE32:
	.loc 1 237 0
#APP
# 237 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 238 0
# 238 "hmcmd.c" 1
	l.nop
# 0 "" 2
	.loc 1 239 0
#NO_APP
	l.lwz   	r5,0(r18)	 # SI load
.LVL263:
	.loc 1 242 0
	l.movhi 	r14,hi(49938432)	 # move immediate M
.LVL264:
	.loc 1 240 0
	l.sub   	r18,r5,r11 # subsi3
.LVL265:
	.loc 1 241 0
	l.addi  	r5,r0,100	 # move immediate I
.LVL266:
	.loc 1 242 0
	l.ori   	r14,r14,61568 # iorsi3
	.loc 1 241 0
	l.div   	r5,r18,r5 # divsi3
.LVL267:
	.loc 1 242 0
	l.mul   	r14,r5,r14 # mulsi3
.LVL268:
	.loc 1 245 0
	l.sw    	4(r1),r3	 # SI store
	l.addi  	r5,r0,10	 # move immediate I
	l.movhi  	r3,hi(.LC3) # movsi_high
.LVL269:
	l.sw    	12(r1),r5	 # SI store
	l.sw    	8(r1),r4	 # SI store
	l.sw    	0(r1),r7	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC3) # movsi_lo_sum
.LVL270:
	.loc 1 246 0
	l.movhi  	r3,hi(.LC4) # movsi_high
	l.sw    	0(r1),r18	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC4) # movsi_lo_sum
.LVL271:
	.loc 1 247 0
	l.movhi 	r3,hi(-40042496)	 # move immediate M
	l.ori   	r3,r3,42496 # iorsi3
	l.add   	r14,r14,r3 # addsi3
.LVL272:
	l.movhi  	r3,hi(.LC5) # movsi_high
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC5) # movsi_lo_sum
.LVL273:
.LBE31:
.LBE30:
	.loc 1 213 0
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL274:
.L83:
	.loc 1 25 0
	l.movhi  	r3,hi(.LC29) # movsi_high
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC29) # movsi_lo_sum
.LVL275:
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L85:
	.loc 1 29 0
	l.jal   	branch_measurement# call_internal
	l.nop			# nop delay slot
.LVL276:
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L86:
	.loc 1 31 0
	l.jal   	do_count# call_internal
	l.nop			# nop delay slot
.LVL277:
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L87:
	.loc 1 33 0
	l.jal   	do_count_cmov# call_internal
	l.nop			# nop delay slot
.LVL278:
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L88:
	.loc 1 35 0
	l.jal   	do_count_unrolled# call_internal
	l.nop			# nop delay slot
.LVL279:
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L89:
	.loc 1 37 0
	l.jal   	rawhaz# call_internal
	l.nop			# nop delay slot
.LVL280:
	l.j     	.L90 # jump_internal	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L56:
	.loc 1 69 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC44) # movsi_lo_sum
.LVL281:
	l.sfnei	r11,0 # cmpsi_ne
	l.bf	.L58	# delay slot filled
	l.movhi  	r4,hi(.LC46) # movsi_high
.LVL282:
.LBB33:
	.loc 1 76 0
	l.movhi 	r14,hi(9961472)	 # move immediate M
.LVL283:
	l.movhi  	r3,hi(.LC45) # movsi_high
	l.ori   	r14,r14,38528 # iorsi3
	l.ori   	r3,r3,lo(.LC45) # movsi_lo_sum
	l.sw    	0(r1),r14	 # SI store
.LVL284:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL285:
	.loc 1 77 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	l.movhi  	r3,hi(.LC38) # movsi_high
	l.ori   	r4,r4,61568 # iorsi3
	l.ori   	r3,r3,lo(.LC38) # movsi_lo_sum
	l.sw    	4(r1),r4	 # SI store
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 79 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 77 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL286:
	.loc 1 80 0
	l.movhi  	r3,hi(.LC39) # movsi_high
	.loc 1 79 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL287:
	.loc 1 80 0
	l.ori   	r3,r3,lo(.LC39) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL288:
	l.ori   	r3,r14,0	 # move reg to reg
.LVL289:
.L59:
	.loc 1 85 0 discriminator 3
#APP
# 85 "hmcmd.c" 1
	l.add r9, r7, r8
# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 84 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L59
	l.nop			# nop delay slot
	l.j     	.L79 # jump_internal
	l.nop			# nop delay slot
.LVL290:
.L66:
.LBE33:
.LBB34:
	.loc 1 183 0
	l.sw    	0(r1),r14	 # SI store
	l.ori   	r3,r3,lo(.LC37) # movsi_lo_sum
.LVL291:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL292:
	.loc 1 184 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	l.movhi  	r3,hi(.LC38) # movsi_high
	l.ori   	r4,r4,61568 # iorsi3
	l.ori   	r3,r3,lo(.LC38) # movsi_lo_sum
	l.sw    	4(r1),r4	 # SI store
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 186 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 184 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL293:
	.loc 1 187 0
	l.movhi  	r3,hi(.LC39) # movsi_high
	.loc 1 186 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL294:
	.loc 1 187 0
	l.ori   	r3,r3,lo(.LC39) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL295:
	l.j     	.L68 # jump_internal
	l.nop			# nop delay slot
.LVL296:
.L58:
.LBE34:
	.loc 1 101 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC46) # movsi_lo_sum
.LVL297:
	l.sfnei	r11,0 # cmpsi_ne
	l.bf	.L60	# delay slot filled
	l.movhi  	r4,hi(.LC48) # movsi_high
.LVL298:
.LBB35:
	.loc 1 108 0
	l.movhi 	r14,hi(9961472)	 # move immediate M
.LVL299:
	l.movhi  	r3,hi(.LC47) # movsi_high
	l.ori   	r14,r14,38528 # iorsi3
	l.ori   	r3,r3,lo(.LC47) # movsi_lo_sum
	l.sw    	0(r1),r14	 # SI store
.LVL300:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL301:
	.loc 1 109 0
	l.addi  	r3,r0,100	 # move immediate I
	.loc 1 111 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 109 0
	l.sw    	0(r1),r3	 # SI store
	l.movhi 	r3,hi(49938432)	 # move immediate M
	l.ori   	r3,r3,61568 # iorsi3
	l.sw    	4(r1),r3	 # SI store
	l.movhi  	r3,hi(.LC38) # movsi_high
	l.jal   	printf # call_value_internal	# delay slot filled
	l.ori   	r3,r3,lo(.LC38) # movsi_lo_sum
.LVL302:
	.loc 1 112 0
	l.movhi  	r3,hi(.LC39) # movsi_high
	.loc 1 111 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL303:
	.loc 1 112 0
	l.ori   	r3,r3,lo(.LC39) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL304:
	.loc 1 114 0
#APP
# 114 "hmcmd.c" 1
	l.addi r7,r8,10
# 0 "" 2
	.loc 1 115 0
# 115 "hmcmd.c" 1
	l.addi r8,r7,20
# 0 "" 2
#NO_APP
	l.ori   	r3,r14,0	 # move reg to reg
.LVL305:
.L61:
	.loc 1 117 0 discriminator 3
#APP
# 117 "hmcmd.c" 1
	l.div r9, r7, r8
# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 116 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L61
	l.nop			# nop delay slot
	l.j     	.L79 # jump_internal
	l.nop			# nop delay slot
.LVL306:
.L60:
.LBE35:
	.loc 1 133 0
	l.lwz   	r3,0(r18)	 # SI load
	l.jal   	strcmp # call_value_internal	# delay slot filled
	l.ori   	r4,r4,lo(.LC48) # movsi_lo_sum
.LVL307:
	l.sfeqi	r11,0 # cmpsi_eq
	l.bnf	.L70	# delay slot filled
	l.movhi 	r14,hi(9961472)	 # move immediate M
.LVL308:
.LBB36:
	.loc 1 140 0
	l.movhi  	r3,hi(.LC49) # movsi_high
	l.ori   	r14,r14,38528 # iorsi3
	l.ori   	r3,r3,lo(.LC49) # movsi_lo_sum
	l.sw    	0(r1),r14	 # SI store
.LVL309:
	l.jal   	printf # call_value_internal	# delay slot filled
	l.movhi  	r18,hi(timestamp) # movsi_high
.LVL310:
	.loc 1 141 0
	l.movhi 	r4,hi(49938432)	 # move immediate M
	l.movhi  	r3,hi(.LC38) # movsi_high
	l.ori   	r4,r4,61568 # iorsi3
	l.ori   	r3,r3,lo(.LC38) # movsi_lo_sum
	l.sw    	4(r1),r4	 # SI store
	l.addi  	r4,r0,100	 # move immediate I
	.loc 1 143 0
	l.ori   	r18,r18,lo(timestamp) # movsi_lo_sum
	.loc 1 141 0
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL311:
	.loc 1 144 0
	l.movhi  	r3,hi(.LC39) # movsi_high
	.loc 1 143 0
	l.lwz   	r20,0(r18)	 # SI load
.LVL312:
	.loc 1 144 0
	l.ori   	r3,r3,lo(.LC39) # movsi_lo_sum
	l.jal   	printf # call_value_internal	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL313:
	l.ori   	r3,r14,0	 # move reg to reg
.LVL314:
.L63:
	.loc 1 149 0 discriminator 3
#APP
# 149 "hmcmd.c" 1
	l.lbz r9, 1(r8)
# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1 # addsi3
	.loc 1 148 0 discriminator 3
	l.sfnei	r3,0 # cmpsi_ne
	l.bf	.L63
	l.nop			# nop delay slot
	l.j     	.L79 # jump_internal
	l.nop			# nop delay slot
.LBE36:
	.cfi_endproc
.LFE0:
	.size	hmcmd_cmd, .-hmcmd_cmd
.Letext0:
	.file 2 "/home/student/hmca/orpmon/include/common.h"
	.file 3 "/home/student/hmca/orpmon/include/string.h"
	.file 4 "/home/student/hmca/orpmon/include/support.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1114
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.4byte	0x5c
	.uleb128 0x4
	.byte	0x4
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd7
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb
	.uleb128 0x6
	.4byte	.LVL0
	.4byte	0x10e0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x5
	.byte	0x3
	.4byte	hmcmd_cmd
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	0x12e
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x1
	.byte	0xde
	.4byte	0x4f
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0xe0
	.4byte	0x4f
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xe1
	.4byte	0x4f
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0xe2
	.4byte	0x4f
	.uleb128 0xa
	.string	"d"
	.byte	0x1
	.byte	0xe3
	.4byte	0x4f
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0xe4
	.4byte	0x4f
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0xef
	.4byte	0x4f
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0xf0
	.4byte	0x4f
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0xf1
	.4byte	0x62
	.uleb128 0xb
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xe7
	.4byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0xbb
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fc
	.uleb128 0xd
	.4byte	0xc7
	.4byte	0x989680
	.uleb128 0xe
	.4byte	0xd2
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	0xdb
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	0xe4
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	0xed
	.byte	0xa
	.uleb128 0xe
	.4byte	0xf6
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	0x101
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	0x10c
	.4byte	.LLST5
	.uleb128 0xe
	.4byte	0x117
	.4byte	.LLST6
	.uleb128 0x10
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1a6
	.uleb128 0xe
	.4byte	0x123
	.4byte	.LLST7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x10eb
	.4byte	0x1c3
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x10eb
	.4byte	0x1e1
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL15
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0xfa
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x469
	.uleb128 0x13
	.4byte	.LASF9
	.byte	0x1
	.byte	0xfe
	.4byte	0x4f
	.4byte	0x989680
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x100
	.4byte	0x4f
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x10d
	.4byte	0x4f
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x10e
	.4byte	0x4f
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x10f
	.4byte	0x62
	.4byte	.LLST11
	.uleb128 0x15
	.string	"cpi"
	.byte	0x1
	.2byte	0x116
	.4byte	0x469
	.4byte	.LLST12
	.uleb128 0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x28c
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x101
	.4byte	0x4f
	.4byte	.LLST13
	.byte	0
	.uleb128 0x10
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x2a8
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x4f
	.4byte	.LLST14
	.byte	0
	.uleb128 0x10
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x2c4
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x4f
	.4byte	.LLST15
	.byte	0
	.uleb128 0x10
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x2e0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x4f
	.4byte	.LLST16
	.byte	0
	.uleb128 0x11
	.4byte	.LVL17
	.4byte	0x10eb
	.4byte	0x2f7
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL26
	.4byte	0x10eb
	.4byte	0x30e
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL27
	.4byte	0x10eb
	.4byte	0x32c
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x10eb
	.4byte	0x343
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x11
	.4byte	.LVL36
	.4byte	0x10eb
	.4byte	0x35a
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x11
	.4byte	.LVL46
	.4byte	0x10eb
	.4byte	0x371
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.uleb128 0x11
	.4byte	.LVL47
	.4byte	0x10eb
	.4byte	0x38f
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL55
	.4byte	0x10eb
	.4byte	0x3a6
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x11
	.4byte	.LVL56
	.4byte	0x10eb
	.4byte	0x3bd
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x11
	.4byte	.LVL66
	.4byte	0x10eb
	.4byte	0x3d4
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x11
	.4byte	.LVL67
	.4byte	0x10eb
	.4byte	0x3f2
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL75
	.4byte	0x10eb
	.4byte	0x409
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x11
	.4byte	.LVL76
	.4byte	0x10eb
	.4byte	0x420
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x11
	.4byte	.LVL85
	.4byte	0x10eb
	.4byte	0x437
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x11
	.4byte	.LVL86
	.4byte	0x10eb
	.4byte	0x455
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL94
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x16
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x17a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x573
	.uleb128 0x17
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4f
	.4byte	0x186a0
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x17f
	.4byte	0x573
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x180
	.4byte	0x4f
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x18a
	.4byte	0x4f
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x4f
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x4f
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x62
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.4byte	0x50e
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x182
	.4byte	0x4f
	.4byte	.LLST22
	.byte	0
	.uleb128 0x10
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x52a
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x4f
	.4byte	.LLST23
	.byte	0
	.uleb128 0x11
	.4byte	.LVL105
	.4byte	0x10eb
	.4byte	0x541
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x11
	.4byte	.LVL110
	.4byte	0x10eb
	.4byte	0x558
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x6
	.4byte	.LVL112
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x4f
	.4byte	0x583
	.uleb128 0x1b
	.4byte	0x3a
	.byte	0x63
	.byte	0
	.uleb128 0x16
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1b5
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x686
	.uleb128 0x17
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x4f
	.4byte	0x186a0
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x573
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x4f
	.4byte	.LLST24
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x4f
	.4byte	.LLST25
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x4f
	.4byte	.LLST26
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x4f
	.4byte	.LLST27
	.uleb128 0x14
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x62
	.4byte	.LLST28
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x621
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x4f
	.4byte	.LLST29
	.byte	0
	.uleb128 0x10
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x63d
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x4f
	.4byte	.LLST30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL123
	.4byte	0x10eb
	.4byte	0x654
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x11
	.4byte	.LVL128
	.4byte	0x10eb
	.4byte	0x66b
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x6
	.4byte	.LVL130
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1eb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x789
	.uleb128 0x17
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x4f
	.4byte	0x186a0
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x573
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x4f
	.4byte	.LLST31
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x4f
	.4byte	.LLST32
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x228
	.4byte	0x4f
	.4byte	.LLST33
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x229
	.4byte	0x4f
	.4byte	.LLST34
	.uleb128 0x14
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x22a
	.4byte	0x62
	.4byte	.LLST35
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x724
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x4f
	.4byte	.LLST36
	.byte	0
	.uleb128 0x10
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x740
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x4f
	.4byte	.LLST37
	.byte	0
	.uleb128 0x11
	.4byte	.LVL141
	.4byte	0x10eb
	.4byte	0x757
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.uleb128 0x11
	.4byte	.LVL146
	.4byte	0x10eb
	.4byte	0x76e
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x6
	.4byte	.LVL148
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x235
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ca
	.uleb128 0x17
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x237
	.4byte	0x4f
	.4byte	0x989680
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x239
	.4byte	0x4f
	.4byte	.LLST38
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x243
	.4byte	0x4f
	.4byte	.LLST39
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x244
	.4byte	0x4f
	.4byte	.LLST40
	.uleb128 0x14
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x245
	.4byte	0x62
	.4byte	.LLST41
	.uleb128 0x10
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x80b
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x23c
	.4byte	0x4f
	.4byte	.LLST42
	.byte	0
	.uleb128 0x10
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x827
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x254
	.4byte	0x4f
	.4byte	.LLST43
	.byte	0
	.uleb128 0x11
	.4byte	.LVL159
	.4byte	0x10eb
	.4byte	0x83e
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL160
	.4byte	0x10eb
	.4byte	0x85c
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL162
	.4byte	0x10eb
	.4byte	0x87a
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL174
	.4byte	0x10eb
	.4byte	0x891
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x11
	.4byte	.LVL175
	.4byte	0x10eb
	.4byte	0x8af
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL177
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF34
	.byte	0x1
	.byte	0x13
	.4byte	0x4f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c0
	.uleb128 0x1d
	.4byte	.LASF22
	.byte	0x1
	.byte	0x13
	.4byte	0x4f
	.4byte	.LLST44
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.byte	0x13
	.4byte	0x56
	.4byte	.LLST45
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0xaeb
	.uleb128 0x1e
	.string	"num"
	.byte	0x1
	.byte	0xa9
	.4byte	0x10c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xab
	.4byte	0x4f
	.4byte	.LLST46
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xac
	.4byte	0x4f
	.4byte	.LLST47
	.uleb128 0x1f
	.string	"dec"
	.byte	0x1
	.byte	0xad
	.4byte	0x4f
	.4byte	.LLST48
	.uleb128 0x20
	.4byte	.LASF9
	.byte	0x1
	.byte	0xb2
	.4byte	0x4f
	.4byte	.LLST49
	.uleb128 0x20
	.4byte	.LASF10
	.byte	0x1
	.byte	0xba
	.4byte	0x4f
	.4byte	.LLST50
	.uleb128 0x20
	.4byte	.LASF11
	.byte	0x1
	.byte	0xc0
	.4byte	0x4f
	.4byte	.LLST51
	.uleb128 0x20
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc3
	.4byte	0x4f
	.4byte	.LLST52
	.uleb128 0x20
	.4byte	.LASF13
	.byte	0x1
	.byte	0xc6
	.4byte	0x62
	.4byte	.LLST53
	.uleb128 0x1f
	.string	"cpi"
	.byte	0x1
	.byte	0xcb
	.4byte	0x469
	.4byte	.LLST54
	.uleb128 0x11
	.4byte	.LVL193
	.4byte	0x10f6
	.4byte	0x9b3
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x72
	.sleb128 -120
	.byte	0
	.uleb128 0x21
	.4byte	.LVL194
	.4byte	0x1101
	.uleb128 0x11
	.4byte	.LVL201
	.4byte	0x10eb
	.4byte	0x9da
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL202
	.4byte	0x10eb
	.4byte	0xa02
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2faf080
	.byte	0
	.uleb128 0x11
	.4byte	.LVL204
	.4byte	0x10eb
	.4byte	0xa20
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL209
	.4byte	0x10eb
	.4byte	0xa37
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.uleb128 0x11
	.4byte	.LVL211
	.4byte	0x10eb
	.4byte	0xa55
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL214
	.4byte	0x10eb
	.4byte	0xa73
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL223
	.4byte	0x10eb
	.4byte	0xa8a
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.uleb128 0x11
	.4byte	.LVL292
	.4byte	0x10eb
	.4byte	0xaa8
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL293
	.4byte	0x10eb
	.4byte	0xad0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2faf080
	.byte	0
	.uleb128 0x6
	.4byte	.LVL295
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0xbb2
	.uleb128 0x20
	.4byte	.LASF9
	.byte	0x1
	.byte	0x28
	.4byte	0x4f
	.4byte	.LLST55
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.4byte	0x4f
	.4byte	.LLST56
	.uleb128 0x20
	.4byte	.LASF10
	.byte	0x1
	.byte	0x30
	.4byte	0x4f
	.4byte	.LLST57
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x36
	.4byte	0x4f
	.uleb128 0x22
	.4byte	.LASF12
	.byte	0x1
	.byte	0x39
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3c
	.4byte	0x62
	.uleb128 0xa
	.string	"cpi"
	.byte	0x1
	.byte	0x41
	.4byte	0x469
	.uleb128 0x11
	.4byte	.LVL238
	.4byte	0x10eb
	.4byte	0xb6f
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL239
	.4byte	0x10eb
	.4byte	0xb97
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2faf080
	.byte	0
	.uleb128 0x6
	.4byte	.LVL241
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xcd4
	.uleb128 0x13
	.4byte	.LASF9
	.byte	0x1
	.byte	0x87
	.4byte	0x4f
	.4byte	0x989680
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x8e
	.4byte	0x4f
	.4byte	.LLST58
	.uleb128 0x22
	.4byte	.LASF10
	.byte	0x1
	.byte	0x8f
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x20
	.4byte	.LASF11
	.byte	0x1
	.byte	0x97
	.4byte	0x4f
	.4byte	.LLST59
	.uleb128 0x20
	.4byte	.LASF12
	.byte	0x1
	.byte	0x9a
	.4byte	0x4f
	.4byte	.LLST60
	.uleb128 0x20
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9d
	.4byte	0x62
	.4byte	.LLST61
	.uleb128 0x1f
	.string	"cpi"
	.byte	0x1
	.byte	0xa2
	.4byte	0x469
	.4byte	.LLST62
	.uleb128 0x11
	.4byte	.LVL245
	.4byte	0x10eb
	.4byte	0xc37
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.uleb128 0x11
	.4byte	.LVL246
	.4byte	0x10eb
	.4byte	0xc55
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL249
	.4byte	0x10eb
	.4byte	0xc73
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL310
	.4byte	0x10eb
	.4byte	0xc91
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL311
	.4byte	0x10eb
	.4byte	0xcb9
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2faf080
	.byte	0
	.uleb128 0x6
	.4byte	.LVL313
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0xbb
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x1b
	.4byte	0xdaf
	.uleb128 0x24
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0xe
	.4byte	0xc7
	.4byte	.LLST63
	.uleb128 0xe
	.4byte	0xd2
	.4byte	.LLST64
	.uleb128 0xe
	.4byte	0xdb
	.4byte	.LLST65
	.uleb128 0xe
	.4byte	0xe4
	.4byte	.LLST66
	.uleb128 0xe
	.4byte	0xed
	.4byte	.LLST67
	.uleb128 0xe
	.4byte	0xf6
	.4byte	.LLST68
	.uleb128 0xe
	.4byte	0x101
	.4byte	.LLST69
	.uleb128 0xe
	.4byte	0x10c
	.4byte	.LLST70
	.uleb128 0xe
	.4byte	0x117
	.4byte	.LLST71
	.uleb128 0x10
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0xd58
	.uleb128 0xe
	.4byte	0x123
	.4byte	.LLST72
	.byte	0
	.uleb128 0x11
	.4byte	.LVL270
	.4byte	0x10eb
	.4byte	0xd75
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.4byte	.LVL271
	.4byte	0x10eb
	.4byte	0xd93
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL273
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0xe76
	.uleb128 0x20
	.4byte	.LASF9
	.byte	0x1
	.byte	0x47
	.4byte	0x4f
	.4byte	.LLST73
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.4byte	0x4f
	.4byte	.LLST74
	.uleb128 0x20
	.4byte	.LASF10
	.byte	0x1
	.byte	0x4f
	.4byte	0x4f
	.4byte	.LLST75
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x57
	.4byte	0x4f
	.uleb128 0x22
	.4byte	.LASF12
	.byte	0x1
	.byte	0x5a
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5d
	.4byte	0x62
	.uleb128 0xa
	.string	"cpi"
	.byte	0x1
	.byte	0x62
	.4byte	0x469
	.uleb128 0x11
	.4byte	.LVL285
	.4byte	0x10eb
	.4byte	0xe33
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL286
	.4byte	0x10eb
	.4byte	0xe5b
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2faf080
	.byte	0
	.uleb128 0x6
	.4byte	.LVL288
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.4byte	0xf3d
	.uleb128 0x20
	.4byte	.LASF9
	.byte	0x1
	.byte	0x67
	.4byte	0x4f
	.4byte	.LLST76
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.4byte	0x4f
	.4byte	.LLST77
	.uleb128 0x20
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6f
	.4byte	0x4f
	.4byte	.LLST78
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x77
	.4byte	0x4f
	.uleb128 0x22
	.4byte	.LASF12
	.byte	0x1
	.byte	0x7a
	.4byte	0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7d
	.4byte	0x62
	.uleb128 0xa
	.string	"cpi"
	.byte	0x1
	.byte	0x82
	.4byte	0x469
	.uleb128 0x11
	.4byte	.LVL301
	.4byte	0x10eb
	.4byte	0xefa
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL302
	.4byte	0x10eb
	.4byte	0xf22
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x2faf080
	.byte	0
	.uleb128 0x6
	.4byte	.LVL304
	.4byte	0x10eb
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL182
	.4byte	0x10eb
	.4byte	0xf54
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.byte	0
	.uleb128 0x11
	.4byte	.LVL185
	.4byte	0x10eb
	.4byte	0xf6b
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.uleb128 0x11
	.4byte	.LVL191
	.4byte	0x110c
	.4byte	0xf82
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x11
	.4byte	.LVL227
	.4byte	0x110c
	.4byte	0xf99
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.uleb128 0x11
	.4byte	.LVL228
	.4byte	0x110c
	.4byte	0xfb0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL229
	.4byte	0x110c
	.4byte	0xfc7
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL230
	.4byte	0x110c
	.4byte	0xfde
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.uleb128 0x11
	.4byte	.LVL231
	.4byte	0x110c
	.4byte	0xff5
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x11
	.4byte	.LVL232
	.4byte	0x110c
	.4byte	0x100c
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x11
	.4byte	.LVL233
	.4byte	0x110c
	.4byte	0x1023
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.uleb128 0x11
	.4byte	.LVL234
	.4byte	0x110c
	.4byte	0x103a
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.uleb128 0x11
	.4byte	.LVL275
	.4byte	0x10eb
	.4byte	0x1051
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x21
	.4byte	.LVL276
	.4byte	0x1fc
	.uleb128 0x21
	.4byte	.LVL277
	.4byte	0x470
	.uleb128 0x21
	.4byte	.LVL278
	.4byte	0x583
	.uleb128 0x21
	.4byte	.LVL279
	.4byte	0x686
	.uleb128 0x21
	.4byte	.LVL280
	.4byte	0x789
	.uleb128 0x11
	.4byte	.LVL281
	.4byte	0x110c
	.4byte	0x1095
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.uleb128 0x11
	.4byte	.LVL297
	.4byte	0x110c
	.4byte	0x10ac
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.uleb128 0x6
	.4byte	.LVL307
	.4byte	0x110c
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x48
	.4byte	0x10d0
	.uleb128 0x1b
	.4byte	0x3a
	.byte	0x63
	.byte	0
	.uleb128 0x25
	.4byte	.LASF35
	.byte	0x4
	.byte	0x37
	.4byte	0x10db
	.uleb128 0x26
	.4byte	0x2c
	.uleb128 0x27
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x69
	.uleb128 0x27
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x2
	.byte	0x58
	.uleb128 0x27
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0x1d
	.uleb128 0x27
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x3
	.byte	0x1c
	.uleb128 0x27
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x3
	.byte	0x21
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 -40000000
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL46-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL66-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-1-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL110-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 -400000
	.byte	0x9f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 -400000
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 -400000
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 -40000000
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x13
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.2byte	0xf080
	.byte	0x21
	.byte	0x84
	.sleb128 0
	.byte	0x8
	.byte	0x64
	.byte	0x1b
	.byte	0x1e
	.byte	0xc
	.4byte	0x2625a00
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x13
	.byte	0x7e
	.sleb128 0
	.byte	0xa
	.2byte	0xf080
	.byte	0x21
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x1e
	.byte	0xc
	.4byte	0x2625a00
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x12
	.byte	0x84
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0xc
	.4byte	0x2faf080
	.byte	0x1e
	.byte	0xc
	.4byte	0x2625a00
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 -40000000
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x12
	.byte	0x82
	.sleb128 0
	.byte	0x8
	.byte	0x64
	.byte	0x1b
	.byte	0xc
	.4byte	0x2faf080
	.byte	0x1e
	.byte	0xc
	.4byte	0x2625a00
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL308-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL182-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL182-1-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL185-1-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL309-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL292-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x78
	.byte	0x9f
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x77
	.byte	0x9f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217-1-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL252-1-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL270-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x63
	.byte	0x9f
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL270-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL270-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x6
	.byte	0x7e
	.sleb128 -40000000
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"result"
.LASF35:
	.string	"timestamp"
.LASF17:
	.string	"input"
.LASF3:
	.string	"sizetype"
.LASF10:
	.string	"timebef"
.LASF29:
	.string	"GNU C11 5.3.0 -mhard-mul -mhard-div -msoft-float -mnewlib -g -O3 -fno-omit-frame-pointer -fno-builtin"
.LASF20:
	.string	"do_count_unrolled"
.LASF21:
	.string	"rawhaz"
.LASF14:
	.string	"float"
.LASF7:
	.string	"long long int"
.LASF6:
	.string	"long int"
.LASF25:
	.string	"printf"
.LASF32:
	.string	"module_hmcmd_init"
.LASF8:
	.string	"long double"
.LASF4:
	.string	"unsigned char"
.LASF22:
	.string	"argc"
.LASF34:
	.string	"hmcmd_cmd"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"strcmp"
.LASF23:
	.string	"argv"
.LASF33:
	.string	"mips_measurement"
.LASF2:
	.string	"short unsigned int"
.LASF13:
	.string	"cycles"
.LASF5:
	.string	"char"
.LASF27:
	.string	"strlen"
.LASF26:
	.string	"strcpy"
.LASF11:
	.string	"timeaf"
.LASF12:
	.string	"duration"
.LASF19:
	.string	"do_count_cmov"
.LASF1:
	.string	"long unsigned int"
.LASF30:
	.string	"hmcmd.c"
.LASF15:
	.string	"branch_measurement"
.LASF9:
	.string	"iterations"
.LASF16:
	.string	"do_count"
.LASF31:
	.string	"/home/student/hmca/orpmon/cmds"
.LASF24:
	.string	"register_command_func"
	.ident	"GCC: (GNU) 5.3.0"
