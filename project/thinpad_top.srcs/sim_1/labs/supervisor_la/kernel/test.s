
kernel.elf:     file format elf32-loongarch
kernel.elf


Disassembly of section .bss:

807f0000 <_sbss>:
	...

807f0080 <TCBT>:
	...

807f0088 <current>:
current():
807f0088:	00000000 	0x00000000

Disassembly of section .text:

80000000 <INITLOCATE>:
INITLOCATE():
80000000:	1c00006c 	pcaddu12i	$r12,3(0x3)
80000004:	2885d18c 	ld.w	$r12,$r12,372(0x174)
80000008:	4c000180 	jirl	$r0,$r12,0
	...

80002000 <WRITESERIAL>:
WRITESERIAL():
80002000:	1c00002d 	pcaddu12i	$r13,1(0x1)
80002004:	288551ad 	ld.w	$r13,$r13,340(0x154)

80002008 <.TESTW>:
.TESTW():
80002008:	280001ac 	ld.b	$r12,$r13,0
8000200c:	0340058c 	andi	$r12,$r12,0x1
80002010:	5c000980 	bne	$r12,$r0,8(0x8) # 80002018 <.WSERIAL>
80002014:	53fff7ff 	b	-12(0xffffff4) # 80002008 <.TESTW>

80002018 <.WSERIAL>:
.WSERIAL():
80002018:	1c00002d 	pcaddu12i	$r13,1(0x1)
8000201c:	2884d1ad 	ld.w	$r13,$r13,308(0x134)
80002020:	290001a4 	st.b	$r4,$r13,0
80002024:	4c000020 	jirl	$r0,$r1,0

80002028 <READSERIAL>:
READSERIAL():
80002028:	1c00002d 	pcaddu12i	$r13,1(0x1)
8000202c:	2884b1ad 	ld.w	$r13,$r13,300(0x12c)

80002030 <.TESTR>:
.TESTR():
80002030:	280001ac 	ld.b	$r12,$r13,0
80002034:	0340098c 	andi	$r12,$r12,0x2
80002038:	5c000980 	bne	$r12,$r0,8(0x8) # 80002040 <.RSERIAL>
8000203c:	53fff7ff 	b	-12(0xffffff4) # 80002030 <.TESTR>

80002040 <.RSERIAL>:
.RSERIAL():
80002040:	1c00002d 	pcaddu12i	$r13,1(0x1)
80002044:	288431ad 	ld.w	$r13,$r13,268(0x10c)
80002048:	280001a4 	ld.b	$r4,$r13,0
8000204c:	4c000020 	jirl	$r0,$r1,0

80002050 <READSERIALWORD>:
READSERIALWORD():
80002050:	02bfb063 	addi.w	$r3,$r3,-20(0xfec)
80002054:	29800061 	st.w	$r1,$r3,0
80002058:	29801077 	st.w	$r23,$r3,4(0x4)
8000205c:	29802078 	st.w	$r24,$r3,8(0x8)
80002060:	29803079 	st.w	$r25,$r3,12(0xc)
80002064:	2980407a 	st.w	$r26,$r3,16(0x10)
80002068:	57ffc3ff 	bl	-64(0xfffffc0) # 80002028 <READSERIAL>
8000206c:	00151017 	or	$r23,$r0,$r4
80002070:	57ffbbff 	bl	-72(0xfffffb8) # 80002028 <READSERIAL>
80002074:	00151018 	or	$r24,$r0,$r4
80002078:	57ffb3ff 	bl	-80(0xfffffb0) # 80002028 <READSERIAL>
8000207c:	00151019 	or	$r25,$r0,$r4
80002080:	57ffabff 	bl	-88(0xfffffa8) # 80002028 <READSERIAL>
80002084:	0015101a 	or	$r26,$r0,$r4
80002088:	0343fef7 	andi	$r23,$r23,0xff
8000208c:	0343ff5a 	andi	$r26,$r26,0xff
80002090:	0343ff39 	andi	$r25,$r25,0xff
80002094:	0343ff18 	andi	$r24,$r24,0xff
80002098:	00156804 	or	$r4,$r0,$r26
8000209c:	0040a084 	slli.w	$r4,$r4,0x8
800020a0:	00156484 	or	$r4,$r4,$r25
800020a4:	0040a084 	slli.w	$r4,$r4,0x8
800020a8:	00156084 	or	$r4,$r4,$r24
800020ac:	0040a084 	slli.w	$r4,$r4,0x8
800020b0:	00155c84 	or	$r4,$r4,$r23
800020b4:	28800061 	ld.w	$r1,$r3,0
800020b8:	28801077 	ld.w	$r23,$r3,4(0x4)
800020bc:	28802078 	ld.w	$r24,$r3,8(0x8)
800020c0:	28803079 	ld.w	$r25,$r3,12(0xc)
800020c4:	2880407a 	ld.w	$r26,$r3,16(0x10)
800020c8:	02805063 	addi.w	$r3,$r3,20(0x14)
800020cc:	4c000020 	jirl	$r0,$r1,0

800020d0 <monitor_version>:
monitor_version():
800020d0:	494e4f4d 	0x494e4f4d
800020d4:	20524f54 	ll.w	$r20,$r26,21068(0x524c)
800020d8:	20726f66 	ll.w	$r6,$r27,29292(0x726c)
800020dc:	6e6f6f4c 	bgeu	$r26,$r12,-102548(0x26f6c) # 7ffe9048 <INITLOCATE-0x16fb8>
800020e0:	63726167 	blt	$r11,$r7,-36256(0x37260) # 7fff9340 <INITLOCATE-0x6cc0>
800020e4:	20323368 	ll.w	$r8,$r27,12848(0x3230)
800020e8:	6e69202d 	bgeu	$r1,$r13,-104160(0x26920) # 7ffe8a08 <INITLOCATE-0x175f8>
800020ec:	61697469 	blt	$r3,$r9,92532(0x16974) # 80018a60 <_GLOBAL_OFFSET_TABLE_+0x15918>
800020f0:	657a696c 	bge	$r11,$r12,96872(0x17a68) # 80019b58 <_GLOBAL_OFFSET_TABLE_+0x16a10>
800020f4:	00002e64 	ctz.d	$r4,$r19
800020f8:	8c807f00 	0x8c807f00
800020fc:	00807f00 	bstrins.d	$r0,$r24,0x0,0x1f

80002100 <START>:
START():
80002100:	1c00fdcc 	pcaddu12i	$r12,2030(0x7ee)
80002104:	02bc018c 	addi.w	$r12,$r12,-256(0xf00)
80002108:	1c00fdcd 	pcaddu12i	$r13,2030(0x7ee)
8000210c:	02be11ad 	addi.w	$r13,$r13,-124(0xf84)

80002110 <bss_init>:
bss_init():
80002110:	5800118d 	beq	$r12,$r13,16(0x10) # 80002120 <bss_init_done>
80002114:	29800180 	st.w	$r0,$r12,0
80002118:	0280118c 	addi.w	$r12,$r12,4(0x4)
8000211c:	53fff7ff 	b	-12(0xffffff4) # 80002110 <bss_init>

80002120 <bss_init_done>:
bss_init_done():
80002120:	1c000023 	pcaddu12i	$r3,1(0x1)
80002124:	28812063 	ld.w	$r3,$r3,72(0x48)
80002128:	00150076 	move	$r22,$r3
8000212c:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002130:	2880b18c 	ld.w	$r12,$r12,44(0x2c)
80002134:	1c00002d 	pcaddu12i	$r13,1(0x1)
80002138:	2880e1ad 	ld.w	$r13,$r13,56(0x38)
8000213c:	298001ac 	st.w	$r12,$r13,0
80002140:	1c00002d 	pcaddu12i	$r13,1(0x1)
80002144:	288081ad 	ld.w	$r13,$r13,32(0x20)
80002148:	298001ac 	st.w	$r12,$r13,0
8000214c:	0380800c 	ori	$r12,$r0,0x20
80002150:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
80002154:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
80002158:	29800060 	st.w	$r0,$r3,0
8000215c:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 80002150 <bss_init_done+0x30>
80002160:	1c00fdcc 	pcaddu12i	$r12,2030(0x7ee)
80002164:	02bc818c 	addi.w	$r12,$r12,-224(0xf20)
80002168:	29800183 	st.w	$r3,$r12,0
8000216c:	00150072 	move	$r18,$r3
80002170:	0380800c 	ori	$r12,$r0,0x20
80002174:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
80002178:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
8000217c:	29800060 	st.w	$r0,$r3,0
80002180:	5ffff580 	bne	$r12,$r0,-12(0x3fff4) # 80002174 <bss_init_done+0x54>
80002184:	1c00fdcc 	pcaddu12i	$r12,2030(0x7ee)
80002188:	02bbf18c 	addi.w	$r12,$r12,-260(0xefc)
8000218c:	29801183 	st.w	$r3,$r12,4(0x4)
80002190:	29802243 	st.w	$r3,$r18,8(0x8)
80002194:	1c00fdce 	pcaddu12i	$r14,2030(0x7ee)
80002198:	02bbc1ce 	addi.w	$r14,$r14,-272(0xef0)
8000219c:	288001ce 	ld.w	$r14,$r14,0
800021a0:	1c00fdcd 	pcaddu12i	$r13,2030(0x7ee)
800021a4:	02bba1ad 	addi.w	$r13,$r13,-280(0xee8)
800021a8:	298001ae 	st.w	$r14,$r13,0
800021ac:	50000400 	b	4(0x4) # 800021b0 <WELCOME>

800021b0 <WELCOME>:
WELCOME():
800021b0:	1c000017 	pcaddu12i	$r23,0
800021b4:	02bc82f7 	addi.w	$r23,$r23,-224(0xf20)
800021b8:	280002e4 	ld.b	$r4,$r23,0
800021bc:	028006f7 	addi.w	$r23,$r23,1(0x1)
800021c0:	1c00002c 	pcaddu12i	$r12,1(0x1)
800021c4:	28bec18c 	ld.w	$r12,$r12,-80(0xfb0)
800021c8:	4c000181 	jirl	$r1,$r12,0
800021cc:	280002e4 	ld.b	$r4,$r23,0
800021d0:	5fffec80 	bne	$r4,$r0,-20(0x3ffec) # 800021bc <WELCOME+0xc>
800021d4:	1c00002c 	pcaddu12i	$r12,1(0x1)
800021d8:	28be418c 	ld.w	$r12,$r12,-112(0xf90)
800021dc:	4c000180 	jirl	$r0,$r12,0

800021e0 <SHELL>:
SHELL():
800021e0:	1c00002c 	pcaddu12i	$r12,1(0x1)
800021e4:	28bdc18c 	ld.w	$r12,$r12,-144(0xf70)
800021e8:	4c000181 	jirl	$r1,$r12,0
800021ec:	00110084 	sub.w	$r4,$r4,$r0
800021f0:	0381480c 	ori	$r12,$r0,0x52
800021f4:	5800208c 	beq	$r4,$r12,32(0x20) # 80002214 <.OP_R>
800021f8:	0381100c 	ori	$r12,$r0,0x44
800021fc:	58005c8c 	beq	$r4,$r12,92(0x5c) # 80002258 <.OP_D>
80002200:	0381040c 	ori	$r12,$r0,0x41
80002204:	5800ac8c 	beq	$r4,$r12,172(0xac) # 800022b0 <.OP_A>
80002208:	03811c0c 	ori	$r12,$r0,0x47
8000220c:	5801008c 	beq	$r4,$r12,256(0x100) # 8000230c <.OP_G>
80002210:	50024400 	b	580(0x244) # 80002454 <.DONE>

80002214 <.OP_R>:
.OP_R():
80002214:	02bfe063 	addi.w	$r3,$r3,-8(0xff8)
80002218:	29800077 	st.w	$r23,$r3,0
8000221c:	29801078 	st.w	$r24,$r3,4(0x4)
80002220:	1c00fdd7 	pcaddu12i	$r23,2030(0x7ee)
80002224:	02b782f7 	addi.w	$r23,$r23,-544(0xde0)
80002228:	0381f018 	ori	$r24,$r0,0x7c
8000222c:	280002e4 	ld.b	$r4,$r23,0
80002230:	02bfff18 	addi.w	$r24,$r24,-1(0xfff)
80002234:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002238:	28bcf18c 	ld.w	$r12,$r12,-196(0xf3c)
8000223c:	4c000181 	jirl	$r1,$r12,0
80002240:	028006f7 	addi.w	$r23,$r23,1(0x1)
80002244:	5fffeb00 	bne	$r24,$r0,-24(0x3ffe8) # 8000222c <.OP_R+0x18>
80002248:	28800077 	ld.w	$r23,$r3,0
8000224c:	28801078 	ld.w	$r24,$r3,4(0x4)
80002250:	02802063 	addi.w	$r3,$r3,8(0x8)
80002254:	50020000 	b	512(0x200) # 80002454 <.DONE>

80002258 <.OP_D>:
.OP_D():
80002258:	02bfe063 	addi.w	$r3,$r3,-8(0xff8)
8000225c:	29800077 	st.w	$r23,$r3,0
80002260:	29801078 	st.w	$r24,$r3,4(0x4)
80002264:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002268:	28bbe18c 	ld.w	$r12,$r12,-264(0xef8)
8000226c:	4c000181 	jirl	$r1,$r12,0
80002270:	00150097 	move	$r23,$r4
80002274:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002278:	28bba18c 	ld.w	$r12,$r12,-280(0xee8)
8000227c:	4c000181 	jirl	$r1,$r12,0
80002280:	00150098 	move	$r24,$r4
80002284:	280002e4 	ld.b	$r4,$r23,0
80002288:	02bfff18 	addi.w	$r24,$r24,-1(0xfff)
8000228c:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002290:	28bb918c 	ld.w	$r12,$r12,-284(0xee4)
80002294:	4c000181 	jirl	$r1,$r12,0
80002298:	028006f7 	addi.w	$r23,$r23,1(0x1)
8000229c:	5fffeb00 	bne	$r24,$r0,-24(0x3ffe8) # 80002284 <.OP_D+0x2c>
800022a0:	28800077 	ld.w	$r23,$r3,0
800022a4:	28801078 	ld.w	$r24,$r3,4(0x4)
800022a8:	02802063 	addi.w	$r3,$r3,8(0x8)
800022ac:	5001a800 	b	424(0x1a8) # 80002454 <.DONE>

800022b0 <.OP_A>:
.OP_A():
800022b0:	02bfe063 	addi.w	$r3,$r3,-8(0xff8)
800022b4:	29800077 	st.w	$r23,$r3,0
800022b8:	29801078 	st.w	$r24,$r3,4(0x4)
800022bc:	1c00002c 	pcaddu12i	$r12,1(0x1)
800022c0:	28ba818c 	ld.w	$r12,$r12,-352(0xea0)
800022c4:	4c000181 	jirl	$r1,$r12,0
800022c8:	00150097 	move	$r23,$r4
800022cc:	1c00002c 	pcaddu12i	$r12,1(0x1)
800022d0:	28ba418c 	ld.w	$r12,$r12,-368(0xe90)
800022d4:	4c000181 	jirl	$r1,$r12,0
800022d8:	00150098 	move	$r24,$r4
800022dc:	00448b18 	srli.w	$r24,$r24,0x2
800022e0:	1c00002c 	pcaddu12i	$r12,1(0x1)
800022e4:	28b9f18c 	ld.w	$r12,$r12,-388(0xe7c)
800022e8:	4c000181 	jirl	$r1,$r12,0
800022ec:	298002e4 	st.w	$r4,$r23,0
800022f0:	02bfff18 	addi.w	$r24,$r24,-1(0xfff)
800022f4:	028012f7 	addi.w	$r23,$r23,4(0x4)
800022f8:	5fffeb00 	bne	$r24,$r0,-24(0x3ffe8) # 800022e0 <.OP_A+0x30>
800022fc:	28800077 	ld.w	$r23,$r3,0
80002300:	28801078 	ld.w	$r24,$r3,4(0x4)
80002304:	02802063 	addi.w	$r3,$r3,8(0x8)
80002308:	50014c00 	b	332(0x14c) # 80002454 <.DONE>

8000230c <.OP_G>:
.OP_G():
8000230c:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002310:	28b9418c 	ld.w	$r12,$r12,-432(0xe50)
80002314:	4c000181 	jirl	$r1,$r12,0
80002318:	00150095 	move	$r21,$r4
8000231c:	03801804 	ori	$r4,$r0,0x6
80002320:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002324:	28b9418c 	ld.w	$r12,$r12,-432(0xe50)
80002328:	4c000181 	jirl	$r1,$r12,0
8000232c:	1c00fdc1 	pcaddu12i	$r1,2030(0x7ee)
80002330:	02b35021 	addi.w	$r1,$r1,-812(0xcd4)
80002334:	2981f023 	st.w	$r3,$r1,124(0x7c)
80002338:	28801022 	ld.w	$r2,$r1,4(0x4)
8000233c:	28802023 	ld.w	$r3,$r1,8(0x8)
80002340:	28803024 	ld.w	$r4,$r1,12(0xc)
80002344:	28804025 	ld.w	$r5,$r1,16(0x10)
80002348:	28805026 	ld.w	$r6,$r1,20(0x14)
8000234c:	28806027 	ld.w	$r7,$r1,24(0x18)
80002350:	28807028 	ld.w	$r8,$r1,28(0x1c)
80002354:	28808029 	ld.w	$r9,$r1,32(0x20)
80002358:	2880902a 	ld.w	$r10,$r1,36(0x24)
8000235c:	2880a02b 	ld.w	$r11,$r1,40(0x28)
80002360:	2880b02c 	ld.w	$r12,$r1,44(0x2c)
80002364:	2880c02d 	ld.w	$r13,$r1,48(0x30)
80002368:	2880d02e 	ld.w	$r14,$r1,52(0x34)
8000236c:	2880e02f 	ld.w	$r15,$r1,56(0x38)
80002370:	2880f030 	ld.w	$r16,$r1,60(0x3c)
80002374:	28810031 	ld.w	$r17,$r1,64(0x40)
80002378:	28811032 	ld.w	$r18,$r1,68(0x44)
8000237c:	28812033 	ld.w	$r19,$r1,72(0x48)
80002380:	28813034 	ld.w	$r20,$r1,76(0x4c)
80002384:	28815036 	ld.w	$r22,$r1,84(0x54)
80002388:	28816037 	ld.w	$r23,$r1,88(0x58)
8000238c:	28817038 	ld.w	$r24,$r1,92(0x5c)
80002390:	28818039 	ld.w	$r25,$r1,96(0x60)
80002394:	2881903a 	ld.w	$r26,$r1,100(0x64)
80002398:	2881a03b 	ld.w	$r27,$r1,104(0x68)
8000239c:	2881b03c 	ld.w	$r28,$r1,108(0x6c)
800023a0:	2881c03d 	ld.w	$r29,$r1,112(0x70)
800023a4:	2881d03e 	ld.w	$r30,$r1,116(0x74)
800023a8:	2881e03f 	ld.w	$r31,$r1,120(0x78)
800023ac:	4c0002a1 	jirl	$r1,$r21,0

800023b0 <.USERRET2>:
.USERRET2():
800023b0:	1c00fdc1 	pcaddu12i	$r1,2030(0x7ee)
800023b4:	02b14021 	addi.w	$r1,$r1,-944(0xc50)
800023b8:	29801022 	st.w	$r2,$r1,4(0x4)
800023bc:	29802023 	st.w	$r3,$r1,8(0x8)
800023c0:	29803024 	st.w	$r4,$r1,12(0xc)
800023c4:	29804025 	st.w	$r5,$r1,16(0x10)
800023c8:	29805026 	st.w	$r6,$r1,20(0x14)
800023cc:	29806027 	st.w	$r7,$r1,24(0x18)
800023d0:	29807028 	st.w	$r8,$r1,28(0x1c)
800023d4:	29808029 	st.w	$r9,$r1,32(0x20)
800023d8:	2980902a 	st.w	$r10,$r1,36(0x24)
800023dc:	2980a02b 	st.w	$r11,$r1,40(0x28)
800023e0:	2980b02c 	st.w	$r12,$r1,44(0x2c)
800023e4:	2980c02d 	st.w	$r13,$r1,48(0x30)
800023e8:	2980d02e 	st.w	$r14,$r1,52(0x34)
800023ec:	2980e02f 	st.w	$r15,$r1,56(0x38)
800023f0:	2980f030 	st.w	$r16,$r1,60(0x3c)
800023f4:	29810031 	st.w	$r17,$r1,64(0x40)
800023f8:	29811032 	st.w	$r18,$r1,68(0x44)
800023fc:	29812033 	st.w	$r19,$r1,72(0x48)
80002400:	29813034 	st.w	$r20,$r1,76(0x4c)
80002404:	29814035 	st.w	$r21,$r1,80(0x50)
80002408:	29815036 	st.w	$r22,$r1,84(0x54)
8000240c:	29816037 	st.w	$r23,$r1,88(0x58)
80002410:	29817038 	st.w	$r24,$r1,92(0x5c)
80002414:	29818039 	st.w	$r25,$r1,96(0x60)
80002418:	2981903a 	st.w	$r26,$r1,100(0x64)
8000241c:	2981a03b 	st.w	$r27,$r1,104(0x68)
80002420:	2981b03c 	st.w	$r28,$r1,108(0x6c)
80002424:	2981c03d 	st.w	$r29,$r1,112(0x70)
80002428:	2981d03e 	st.w	$r30,$r1,116(0x74)
8000242c:	2981e03f 	st.w	$r31,$r1,120(0x78)
80002430:	1c000004 	pcaddu12i	$r4,0
80002434:	02be0084 	addi.w	$r4,$r4,-128(0xf80)
80002438:	29800024 	st.w	$r4,$r1,0
8000243c:	2881f023 	ld.w	$r3,$r1,124(0x7c)
80002440:	03801c04 	ori	$r4,$r0,0x7
80002444:	1c00002c 	pcaddu12i	$r12,1(0x1)
80002448:	28b4b18c 	ld.w	$r12,$r12,-724(0xd2c)
8000244c:	4c000181 	jirl	$r1,$r12,0
80002450:	50000400 	b	4(0x4) # 80002454 <.DONE>

80002454 <.DONE>:
.DONE():
80002454:	53fd8fff 	b	-628(0xffffd8c) # 800021e0 <SHELL>
	...

80003000 <UTEST_SIMPLE>:
UTEST_SIMPLE():
80003000:	02800484 	addi.w	$r4,$r4,1(0x1)
80003004:	4c000020 	jirl	$r0,$r1,0

80003008 <UTEST_STREAM>:
UTEST_STREAM():
80003008:	15002004 	lu12i.w	$r4,-524032(0x80100)
8000300c:	15008005 	lu12i.w	$r5,-523264(0x80400)
80003010:	14006006 	lu12i.w	$r6,768(0x300)
80003014:	00101886 	add.w	$r6,$r4,$r6

80003018 <stream_next>:
stream_next():
80003018:	2880008c 	ld.w	$r12,$r4,0
8000301c:	298000ac 	st.w	$r12,$r5,0
80003020:	02801084 	addi.w	$r4,$r4,4(0x4)
80003024:	028010a5 	addi.w	$r5,$r5,4(0x4)
80003028:	5ffff086 	bne	$r4,$r6,-16(0x3fff0) # 80003018 <stream_next>
8000302c:	4c000020 	jirl	$r0,$r1,0

80003030 <UTEST_MATRIX>:
UTEST_MATRIX():
80003030:	15008004 	lu12i.w	$r4,-523264(0x80400)
80003034:	15008205 	lu12i.w	$r5,-523248(0x80410)
80003038:	15008406 	lu12i.w	$r6,-523232(0x80420)
8000303c:	03818007 	ori	$r7,$r0,0x60
80003040:	00150014 	move	$r20,$r0

80003044 <loop1>:
loop1():
80003044:	58006e87 	beq	$r20,$r7,108(0x6c) # 800030b0 <loop1end>
80003048:	00408a8c 	slli.w	$r12,$r20,0x2
8000304c:	0040a68e 	slli.w	$r14,$r20,0x9
80003050:	0010308c 	add.w	$r12,$r4,$r12
80003054:	001038ae 	add.w	$r14,$r5,$r14
80003058:	0015000d 	move	$r13,$r0

8000305c <loop2>:
loop2():
8000305c:	58004da7 	beq	$r13,$r7,76(0x4c) # 800030a8 <loop2end>
80003060:	28800193 	ld.w	$r19,$r12,0
80003064:	0040a5a8 	slli.w	$r8,$r13,0x9
80003068:	001020c8 	add.w	$r8,$r6,$r8
8000306c:	001501d0 	move	$r16,$r14
80003070:	0015000f 	move	$r15,$r0

80003074 <loop3>:
loop3():
80003074:	580029e7 	beq	$r15,$r7,40(0x28) # 8000309c <loop3end>
80003078:	028005ef 	addi.w	$r15,$r15,1(0x1)
8000307c:	28800211 	ld.w	$r17,$r16,0
80003080:	28800112 	ld.w	$r18,$r8,0
80003084:	001c4671 	mul.w	$r17,$r19,$r17
80003088:	02801108 	addi.w	$r8,$r8,4(0x4)
8000308c:	02801210 	addi.w	$r16,$r16,4(0x4)
80003090:	00104651 	add.w	$r17,$r18,$r17
80003094:	29bff111 	st.w	$r17,$r8,-4(0xffc)
80003098:	53ffdfff 	b	-36(0xfffffdc) # 80003074 <loop3>

8000309c <loop3end>:
loop3end():
8000309c:	028005ad 	addi.w	$r13,$r13,1(0x1)
800030a0:	0288018c 	addi.w	$r12,$r12,512(0x200)
800030a4:	53ffbbff 	b	-72(0xfffffb8) # 8000305c <loop2>

800030a8 <loop2end>:
loop2end():
800030a8:	02800694 	addi.w	$r20,$r20,1(0x1)
800030ac:	53ff9bff 	b	-104(0xfffff98) # 80003044 <loop1>

800030b0 <loop1end>:
loop1end():
800030b0:	4c000020 	jirl	$r0,$r1,0

800030b4 <UTEST_CRYPTONIGHT>:
UTEST_CRYPTONIGHT():
800030b4:	15008004 	lu12i.w	$r4,-523264(0x80400)
800030b8:	15bd5b65 	lu12i.w	$r5,-136485(0xdeadb)
800030bc:	03bbbca5 	ori	$r5,$r5,0xeef
800030c0:	15f59d66 	lu12i.w	$r6,-21269(0xfaceb)
800030c4:	038030c6 	ori	$r6,$r6,0xc
800030c8:	14002007 	lu12i.w	$r7,256(0x100)
800030cc:	00151010 	or	$r16,$r0,$r4
800030d0:	0015000f 	move	$r15,$r0
800030d4:	1400100c 	lu12i.w	$r12,128(0x80)

800030d8 <fill_next>:
fill_next():
800030d8:	2980020f 	st.w	$r15,$r16,0
800030dc:	028005ef 	addi.w	$r15,$r15,1(0x1)
800030e0:	02801210 	addi.w	$r16,$r16,4(0x4)
800030e4:	5ffff5ec 	bne	$r15,$r12,-12(0x3fff4) # 800030d8 <fill_next>
800030e8:	0015000d 	move	$r13,$r0
800030ec:	14000fee 	lu12i.w	$r14,127(0x7f)
800030f0:	03bffdce 	ori	$r14,$r14,0xfff

800030f4 <crn_hext>:
crn_hext():
800030f4:	0014b8ac 	and	$r12,$r5,$r14
800030f8:	0040898c 	slli.w	$r12,$r12,0x2
800030fc:	0010308c 	add.w	$r12,$r4,$r12
80003100:	2880018f 	ld.w	$r15,$r12,0
80003104:	004484b0 	srli.w	$r16,$r5,0x1
80003108:	004085ef 	slli.w	$r15,$r15,0x1
8000310c:	0015c1ef 	xor	$r15,$r15,$r16
80003110:	0014b9f0 	and	$r16,$r15,$r14
80003114:	001599e6 	xor	$r6,$r15,$r6
80003118:	00408a10 	slli.w	$r16,$r16,0x2
8000311c:	29800186 	st.w	$r6,$r12,0
80003120:	00104090 	add.w	$r16,$r4,$r16
80003124:	2880020c 	ld.w	$r12,$r16,0
80003128:	00153c06 	or	$r6,$r0,$r15
8000312c:	001c31ef 	mul.w	$r15,$r15,$r12
80003130:	028005ad 	addi.w	$r13,$r13,1(0x1)
80003134:	001015e5 	add.w	$r5,$r15,$r5
80003138:	29800205 	st.w	$r5,$r16,0
8000313c:	00159585 	xor	$r5,$r12,$r5
80003140:	5fffb4ed 	bne	$r7,$r13,-76(0x3ffb4) # 800030f4 <crn_hext>

80003144 <crn_end>:
crn_end():
80003144:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .got:

80003148 <_GLOBAL_OFFSET_TABLE_>:
80003148:	00000000 	0x00000000
8000314c:	bfd003f8 	0xbfd003f8
80003150:	80002028 	0x80002028
80003154:	bfd003fc 	0xbfd003fc
80003158:	807f0000 	0x807f0000
8000315c:	80002050 	0x80002050
80003160:	807f0054 	0x807f0054
80003164:	800021e0 	0x800021e0
80003168:	80800000 	0x80800000
8000316c:	807f0008 	0x807f0008
80003170:	80002000 	0x80002000
80003174:	80002100 	0x80002100