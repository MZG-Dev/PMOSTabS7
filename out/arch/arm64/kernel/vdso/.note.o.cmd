cmd_arch/arm64/kernel/vdso/note.o := /home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/clang-10.0/bin/clang -Wp,-MD,arch/arm64/kernel/vdso/.note.o.d -nostdinc -isystem /home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/clang-10.0/lib64/clang/10.0.4/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix=/home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/aarch64-4.9/bin/ --gcc-toolchain=/home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/aarch64-4.9 -no-integrated-as -Wno-bool-operation -Werror=unknown-warning-option -Wno-unsequenced -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3 --target=aarch64-linux-gnu --gcc-toolchain=/home/mzg/Downloads/SM-T970_EUR_RR_Opensource/Toolchains_by_Google/aarch64-4.9   -c -o arch/arm64/kernel/vdso/note.o ../arch/arm64/kernel/vdso/note.S

source_arch/arm64/kernel/vdso/note.o := ../arch/arm64/kernel/vdso/note.S

deps_arch/arm64/kernel/vdso/note.o := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  ../include/linux/uts.h \
    $(wildcard include/config/default/hostname.h) \
  include/generated/uapi/linux/version.h \
  ../include/linux/elfnote.h \
  ../include/linux/build-salt.h \
    $(wildcard include/config/build/salt.h) \

arch/arm64/kernel/vdso/note.o: $(deps_arch/arm64/kernel/vdso/note.o)

$(deps_arch/arm64/kernel/vdso/note.o):
