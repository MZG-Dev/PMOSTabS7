cmd_arch/arm64/kernel/vdso/vdso.lds := /home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/clang-10.0/bin/clang -E -Wp,-MD,arch/arm64/kernel/vdso/.vdso.lds.d -nostdinc -isystem /home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/clang-10.0/lib64/clang/10.0.4/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -P -C -Uarm64 -P -Uarm64 -D__ASSEMBLY__ -DLINKER_SCRIPT -o arch/arm64/kernel/vdso/vdso.lds ../arch/arm64/kernel/vdso/vdso.lds.S

source_arch/arm64/kernel/vdso/vdso.lds := ../arch/arm64/kernel/vdso/vdso.lds.S

deps_arch/arm64/kernel/vdso/vdso.lds := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  ../include/linux/const.h \
  ../include/uapi/linux/const.h \
  ../arch/arm64/include/asm/page.h \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  ../arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/arm64/page/shift.h) \
    $(wildcard include/config/arm64/cont/shift.h) \
  ../include/asm-generic/getorder.h \
  ../arch/arm64/include/asm/vdso.h \

arch/arm64/kernel/vdso/vdso.lds: $(deps_arch/arm64/kernel/vdso/vdso.lds)

$(deps_arch/arm64/kernel/vdso/vdso.lds):
