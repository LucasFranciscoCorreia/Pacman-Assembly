.data

mapa1:	.space 32784
bitmap_size:	.word 8196	# 512 x 256 pixels => 4 pixels por word
cor:		.word 0x0000FF

.macro pintar_linha(%inicio, %fim)
	li, $a0, %inicio
	li $a1, %fim
	lw $a2, cor
	pintar:
		bgt $a0, $a1, parar_linha
		sw $a2, 0($a0)
		addi $a0, $a0, 4
		j pintar
	parar_linha:	
.end_macro

.macro pintar_mapa1
	pintar_linha(0x10010000, 0x10010060)
	pintar_linha(0x10010100, 0x10010100)
	pintar_linha(0x10010200, 0x10010200)
	pintar_linha(0x10010300, 0x10010300)
	pintar_linha(0x10010400, 0x10010400)
	pintar_linha(0x10010500, 0x10010500)
	pintar_linha(0x10010600, 0x10010600)
	pintar_linha(0x10010700, 0x10010700)
	pintar_linha(0x10010800, 0x10010800)
	pintar_linha(0x10010900, 0x10010900)
	pintar_linha(0x10010a00, 0x10010a10)
	pintar_linha(0x10010b10, 0x10010b10)
	pintar_linha(0x10010c00, 0x10010c10)
	pintar_linha(0x10010e00, 0x10010e10)
	pintar_linha(0x10010f10, 0x10010f10)
	pintar_linha(0x10011010, 0x10011010)
	pintar_linha(0x10011110, 0x10011110)
	pintar_linha(0x10011200, 0x10011210)
	pintar_linha(0x10011300, 0x10011300)
	pintar_linha(0x10011400, 0x10011400)
	pintar_linha(0x10011500, 0x10011500)
	pintar_linha(0x10011600, 0x10011600)
	pintar_linha(0x10011700, 0x10011704)
	pintar_linha(0x10011800, 0x10011804)
	pintar_linha(0x10011900, 0x10011904)
	pintar_linha(0x10011a00, 0x10011a04)
	pintar_linha(0x10011b00, 0x10011b00)
	pintar_linha(0x10011c00, 0x10011c00)
	pintar_linha(0x10011d00, 0x10011d00)
	pintar_linha(0x10011e00, 0x10011e00)
	pintar_linha(0x10011f00, 0x10011f60)
	
	pintar_linha(0x10010160, 0x10010160)
	pintar_linha(0x10010260, 0x10010260)
	pintar_linha(0x10010360, 0x10010360)
	pintar_linha(0x10010460, 0x10010460)
	pintar_linha(0x10010560, 0x10010560)
	pintar_linha(0x10010660, 0x10010660)
	pintar_linha(0x10010760, 0x10010760)
	pintar_linha(0x10010860, 0x10010860)
	pintar_linha(0x10010960, 0x10010960)
	pintar_linha(0x10010a50, 0x10010a60)
	pintar_linha(0x10010b50, 0x10010b50)
	pintar_linha(0x10010c50, 0x10010c60)
	pintar_linha(0x10010e50, 0x10010e60)
	pintar_linha(0x10010f50, 0x10010f50)
	pintar_linha(0x10011050, 0x10011050)
	pintar_linha(0x10011150, 0x10011150)
	pintar_linha(0x10011250, 0x10011260)
	pintar_linha(0x10011360, 0x10011360)
	pintar_linha(0x10011460, 0x10011460)
	pintar_linha(0x10011560, 0x10011560)
	pintar_linha(0x10011660, 0x10011660)
	pintar_linha(0x1001175c, 0x10011760)
	pintar_linha(0x1001185c, 0x10011860)
	pintar_linha(0x1001195c, 0x10011960)
	pintar_linha(0x10011a5c, 0x10011a60)
	pintar_linha(0x10011b60, 0x10011b60)
	pintar_linha(0x10011c60, 0x10011c60)
	pintar_linha(0x10011d60, 0x10011d60)
	pintar_linha(0x10011e60, 0x10011e60)
	
	pintar_linha(0x10010208, 0x10010210)
	pintar_linha(0x10010308, 0x10010310)
	pintar_linha(0x10010408, 0x10010410)
	pintar_linha(0x10010508, 0x10010510)
	
	pintar_linha(0x10010218, 0x10010220)
	pintar_linha(0x10010318, 0x10010320)
	pintar_linha(0x10010418, 0x10010420)
	pintar_linha(0x10010518, 0x10010520)
	
	pintar_linha(0x10010128, 0x10010138)
	pintar_linha(0x10010228, 0x10010238)
	pintar_linha(0x10010328, 0x10010338)
	pintar_linha(0x10010428, 0x10010438)
	pintar_linha(0x10010528, 0x10010538)
	
	pintar_linha(0x10010240, 0x10010248)
	pintar_linha(0x10010340, 0x10010348)
	pintar_linha(0x10010440, 0x10010448)
	pintar_linha(0x10010540, 0x10010548)
	
	pintar_linha(0x10010250, 0x10010258)
	pintar_linha(0x10010350, 0x10010358)
	pintar_linha(0x10010450, 0x10010458)
	pintar_linha(0x10010550, 0x10010558)
	
	pintar_linha(0x10010708, 0x10010710)
	pintar_linha(0x10010808, 0x10010810)
	
	pintar_linha(0x10010724, 0x1001072c)
	pintar_linha(0x10010734, 0x1001073c)
	
	pintar_linha(0x10010718, 0x1001071c)
	pintar_linha(0x10010818, 0x1001081c)
	pintar_linha(0x10010918, 0x1001092c)
	pintar_linha(0x10010a18, 0x10010a2c)
	pintar_linha(0x10010b18, 0x10010b1c)
	pintar_linha(0x10010c18, 0x10010c1c)
	
	pintar_linha(0x10010744, 0x10010748)
	pintar_linha(0x10010844, 0x10010848)
	pintar_linha(0x10010934, 0x10010948)
	pintar_linha(0x10010a34, 0x10010a48)
	pintar_linha(0x10010b44, 0x10010b48)
	pintar_linha(0x10010c44, 0x10010c48)
	
	pintar_linha(0x10010750, 0x10010758)
	pintar_linha(0x10010850, 0x10010858)
	
	pintar_linha(0x10010e18, 0x10010e1c)
	pintar_linha(0x10010f18, 0x10010f1c)
	pintar_linha(0x10011018, 0x1001101c)
	pintar_linha(0x10011118, 0x1001111c)
	pintar_linha(0x10011218, 0x1001121c)
	
	pintar_linha(0x10011408, 0x10011410)
	pintar_linha(0x10011508, 0x10011510)
	pintar_linha(0x1001160c, 0x10011610)
	pintar_linha(0x1001170c, 0x10011710)
	pintar_linha(0x1001180c, 0x10011810)
	pintar_linha(0x1001190c, 0x10011910)
	pintar_linha(0x10011a0c, 0x10011a10)
	
	pintar_linha(0x10011718, 0x1001171c)
	pintar_linha(0x10011818, 0x1001181c)
	pintar_linha(0x10011918, 0x1001191c)
	pintar_linha(0x10011a18, 0x10011a1c)
	pintar_linha(0x10011b18, 0x10011b1c)
	pintar_linha(0x10011c08, 0x10011c24)
	pintar_linha(0x10011d08, 0x10011d24)
	
	pintar_linha(0x10011724, 0x1001173c)
	pintar_linha(0x10011824, 0x1001183c)
	pintar_linha(0x10011924, 0x1001193c)
	pintar_linha(0x10011a24, 0x10011a3c)
	pintar_linha(0x10011b2c, 0x10011b34)
	pintar_linha(0x10011c2c, 0x10011c34)
	pintar_linha(0x10011d2c, 0x10011d34)
	
	pintar_linha(0x10011744, 0x10011748)
	pintar_linha(0x10011844, 0x10011848)
	pintar_linha(0x10011944, 0x10011948)
	pintar_linha(0x10011a44, 0x10011a48)
	pintar_linha(0x10011b44, 0x10011b48)
	pintar_linha(0x10011c3c, 0x10011c58)
	pintar_linha(0x10011d3c, 0x10011d58)

	pintar_linha(0x10011450, 0x10011458)
	pintar_linha(0x10011550, 0x10011558)
	pintar_linha(0x10011650, 0x10011654)
	pintar_linha(0x10011750, 0x10011754)
	pintar_linha(0x10011850, 0x10011854)
	pintar_linha(0x10011950, 0x10011954)
	pintar_linha(0x10011a50, 0x10011a54)
	
	pintar_linha(0x10011418, 0x1001142c)
	pintar_linha(0x10011518, 0x1001152c)
	
	pintar_linha(0x10011434, 0x10011448)
	pintar_linha(0x10011534, 0x10011548)
	
	pintar_linha(0x10010e44, 0x10010e48)
	pintar_linha(0x10010f44, 0x10010f48)
	pintar_linha(0x10011044, 0x10011048)
	pintar_linha(0x10011144, 0x10011148)
	pintar_linha(0x10011244, 0x10011248)
	
	pintar_linha(0x10010c24, 0x10010c2c)
	pintar_linha(0x10010d24, 0x10010d24)
	pintar_linha(0x10010e24, 0x10010e24)
	pintar_linha(0x10010f24, 0x10010f24)
	pintar_linha(0x10011024, 0x10011024)
	pintar_linha(0x10011124, 0x10011124)
	pintar_linha(0x10011224, 0x1001123c)
	
	pintar_linha(0x10010c34, 0x10010c3c)
	pintar_linha(0x10010d3c, 0x10010d3c)
	pintar_linha(0x10010e3c, 0x10010e3c)
	pintar_linha(0x10010f3c, 0x10010f3c)
	pintar_linha(0x1001103c, 0x1001103c)
	pintar_linha(0x1001113c, 0x1001113c)
	addi $a0, $zero, 0x10010c30
	addi $a1, $zero, 0xffffffff
	sw $a1, 0($a0)
.end_macro

.macro colocar_pacman
	addi $a0, $zero,0x00FFFF00
	sw $a0, 0($s0)
.end_macro

.macro mover_pacman 
	lw $a0, 0xffff0004
	addi $a1, $zero, 0x00ffff00
	
	beq $a0, 119, mover_cima
	beq $a0, 115, mover_baixo
	beq $a0, 97, mover_esquerda
	beq $a0, 100, mover_direita
	j fim_movimento
	
	mover_esquerda:
	lw $t0, -4($s0)
	lw $t1, cor
	beq $t0, $t1, parede
	addi $t0, $s0, -4
	beq $t0, 0x10010d00, portal_direita
	sw  $zero, 0($s0)
	addi $s0, $s0, -4
	sw $a1, 0($s0)
	sw $zero, 0xffff0004
	j fim_movimento	
	
	mover_direita:
	lw $t0, 4($s0)
	lw $t1, cor
	beq $t0, $t1, parede
	addi $t0, $s0, 4
	beq $t0, 0x10010d60, portal_esquerda
	sw  $zero, 0($s0)
	addi $s0, $s0, 4
	sw $a1, 0($s0)
	sw $zero, 0xffff0004
	j fim_movimento	
	
	mover_baixo:
	lw $t0, 256($s0)
	lw $t1, cor
	beq $t0, $t1, parede
	addi $t0, $s0, 256
	beq $t0, 0x10010c30, fim_movimento
	sw  $zero, 0($s0)
	addi $s0, $s0, 256
	sw $a1, 0($s0)
	sw $zero, 0xffff0004
	
	j fim_movimento	
	
	mover_cima:
	lw $t0, -256($s0)
	lw $t1, cor
	beq $t0, $t1, parede
	sw  $zero, 0($s0)
	addi $s0, $s0, -256
	sw $a1, 0($s0)
	sw $zero, 0xffff0004
	j fim_movimento	
	
	parede:
	sw $zero, 0xffff0004
	j fim_movimento
	
	portal_direita:
	sw  $zero, 0($s0)
	addi $s0, $zero, 0x10010d5c
	sw $a1, 0($s0)
	sw $zero, 0xffff0004
	j fim_movimento
	
	portal_esquerda:
	sw  $zero, 0($s0)
	addi $s0, $zero, 0x10010d04
	sw $a1, 0($s0)
	sw $zero, 0xffff0004
			
	fim_movimento:
.end_macro
.text
	addi $s0, $zero, 0x10011630
	la $t0, mapa1
	pintar_mapa1()
	colocar_pacman()
	do:
		mover_pacman()
		j do
	while:
	
	
