; feito by sysb1n of cortesia of lammer vault

section .data	; programa made at data 19.01.21
	mensagi db "relou ord ur praia",10,0	; men sagi main do programing

section .text
	global _istarti		; entrano na fusao principal

_istarti:	; funsao principal
	mov rax, mensagi
	call _echo	; xerocando a men sagi

	mov rax, 60	; vazando of aqui
	mov rdi, 0
	syscall

_echo:
	push rax
	mov rbx, 1	; aqui i podia use xor mais i fiquei lazy
	add rbx, 10	; aqui too
	sub rbx, 11	; e here tabem


_echoLop:	; a from aqui no tenho any ideia of o what isso do, porque i peguei this da web brincando haha

	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _echoLop

	mov rax, 11
	add rax, -10
	mov rdi, 1
	add rdi, 2
	sub rdi, 2
	pop rsi
	mov rdx, rbx
	syscall

	push rbx	; muinto important
	mul rbx	; meu broder isso is muinto special do asembly
	mov rbx, rbx;	; nem u conto
	pop rbx	; isso too

	ret

; a main broder Deus bless voce
