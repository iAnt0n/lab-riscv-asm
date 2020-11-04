MAIN=lab1.c
EXECUTABLE=lab1.elf
DUMP=lab1.dump

.PHONY: clean all

all: $(EXECUTABLE) $(DUMP)

$(EXECUTABLE) : $(MAIN)
	@riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 $(MAIN) -o $(EXECUTABLE)

$(DUMP) : $(EXECUTABLE)
	@riscv64-unknown-elf-objdump -D $(EXECUTABLE) > $(DUMP)


clean:
	@rm -f $(EXECUTABLE)
	@rm -f $(DUMP)
