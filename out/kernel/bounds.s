	.text
	.file	"bounds.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	//APP
	
.ascii "->NR_PAGEFLAGS 22 __NR_PAGEFLAGS"
	//NO_APP
	//APP
	
.ascii "->MAX_NR_ZONES 3 __MAX_NR_ZONES"
	//NO_APP
	//APP
	
.ascii "->NR_CPUS_BITS 6 ilog2(CONFIG_NR_CPUS)"
	//NO_APP
	//APP
	
.ascii "->SPINLOCK_SIZE 4 sizeof(spinlock_t)"
	//NO_APP
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.ident	"Android (6207600 based on r377782b) clang version 10.0.4 (https://android.googlesource.com/toolchain/llvm-project 0cb1afdb060d6619a9837ab6866cf4adf2336416)"
	.section	".note.GNU-stack","",@progbits
