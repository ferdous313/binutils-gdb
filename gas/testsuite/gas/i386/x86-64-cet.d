#objdump: -dw
#name: x86-64 CET

.*: +file format .*

Disassembly of section .text:

0+ <_start>:
 +[a-f0-9]+:	f3 0f 01 e9          	incsspd 
 +[a-f0-9]+:	f3 48 0f 01 e9       	incsspq 
 +[a-f0-9]+:	f3 41 0f 1e cc       	rdsspd %r12d
 +[a-f0-9]+:	f3 48 0f 1e c8       	rdsspq %rax
 +[a-f0-9]+:	f3 0f 01 ea          	savessp 
 +[a-f0-9]+:	f3 41 0f 01 2c 24    	rstorssp \(%r12\)
 +[a-f0-9]+:	41 0f 38 f6 04 24    	wrssd  %eax,\(%r12\)
 +[a-f0-9]+:	4a 0f 38 f6 14 39    	wrssq  %rdx,\(%rcx,%r15,1\)
 +[a-f0-9]+:	66 41 0f 38 f5 04 24 	wrussd %eax,\(%r12\)
 +[a-f0-9]+:	66 48 0f 38 f5 0c 03 	wrussq %rcx,\(%rbx,%rax,1\)
 +[a-f0-9]+:	f3 0f ae 28          	setssbsy \(%rax\)
 +[a-f0-9]+:	f3 42 0f ae 34 26    	clrssbsy \(%rsi,%r12,1\)
 +[a-f0-9]+:	f3 0f 1e fa          	endbr64 
 +[a-f0-9]+:	f3 0f 1e fb          	endbr32 
 +[a-f0-9]+:	f3 0f 01 e9          	incsspd 
 +[a-f0-9]+:	f3 48 0f 01 e9       	incsspq 
 +[a-f0-9]+:	f3 41 0f 1e cc       	rdsspd %r12d
 +[a-f0-9]+:	f3 48 0f 1e c8       	rdsspq %rax
 +[a-f0-9]+:	f3 0f 01 ea          	savessp 
 +[a-f0-9]+:	f3 41 0f 01 2c 24    	rstorssp \(%r12\)
 +[a-f0-9]+:	41 0f 38 f6 04 24    	wrssd  %eax,\(%r12\)
 +[a-f0-9]+:	4a 0f 38 f6 14 39    	wrssq  %rdx,\(%rcx,%r15,1\)
 +[a-f0-9]+:	66 41 0f 38 f5 04 24 	wrussd %eax,\(%r12\)
 +[a-f0-9]+:	66 48 0f 38 f5 0c 03 	wrussq %rcx,\(%rbx,%rax,1\)
 +[a-f0-9]+:	f3 0f ae 28          	setssbsy \(%rax\)
 +[a-f0-9]+:	f3 42 0f ae 34 26    	clrssbsy \(%rsi,%r12,1\)
 +[a-f0-9]+:	f3 0f 1e fa          	endbr64 
 +[a-f0-9]+:	f3 0f 1e fb          	endbr32 
#pass
