COMPILER_ONE=mpicc
COMPILER_TWO=gcc

# Flags
CFLAGS=-Wall -lm -fopenmp

# Files to compile
OBJECTS_ONE=parallel_main.c pcv.c
OBJECTS_TWO=parallel.c

# Executable name
EXE_ONE=exe
EXE_TWO=exe_dois


all: comando_um comando_dois run

comando_um:$(OBJECTS_ONE) 
	$(COMPILER_ONE) $(OBJECTS_ONE) -o $(EXE_ONE) $(CFLAGS)

comando_dois:$(OBJECTS_TWO) 
	$(COMPILER_TWO) $(OBJECTS_TWO) -o $(EXE_TWO)

run:
	./$(EXE_TWO)

#clean:
#rm $(EXE_TWO)

#test1:
#./$(EXE_TWO)
	
#test2:
#	./$(EXE) 10000
	
#test3:
#	./$(EXE) 100000
