# Project: minercave
# Makefile created by Dev-C++ 5.11

CPP      = g++.exe -D__DEBUG__
CC       = gcc.exe -D__DEBUG__
WINDRES  = windres.exe
RES      = minercave_private.res
OBJ      = minercave.o base/app.o base/summary.o net/endpoint.o $(RES)
LINKOBJ  = minercave.o base/app.o base/summary.o net/endpoint.o $(RES)
LIBS     = -L"C:/Program Files/Dev-Cpp/MinGW64/x86_64-w64-mingw32/lib32" -static-libgcc -m32 -g3
INCS     = -I"C:/Program Files/Dev-Cpp/MinGW64/include" -I"C:/Program Files/Dev-Cpp/MinGW64/x86_64-w64-mingw32/include" -I"C:/Program Files/Dev-Cpp/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include"
CXXINCS  = -I"C:/Program Files/Dev-Cpp/MinGW64/include" -I"C:/Program Files/Dev-Cpp/MinGW64/x86_64-w64-mingw32/include" -I"C:/Program Files/Dev-Cpp/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include" -I"C:/Program Files/Dev-Cpp/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++"
BIN      = minercave.exe
CXXFLAGS = $(CXXINCS) -m32 -g3
CFLAGS   = $(INCS) -m32 -g3
RM       = rm.exe -f

.PHONY: all all-before all-after clean clean-custom

all: all-before $(BIN) all-after

clean: clean-custom
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -o $(BIN) $(LIBS)

minercave.o: minercave.cpp
	$(CPP) -c minercave.cpp -o minercave.o $(CXXFLAGS)

base/app.o: base/app.cpp
	$(CPP) -c base/app.cpp -o base/app.o $(CXXFLAGS)

base/summary.o: base/summary.cpp
	$(CPP) -c base/summary.cpp -o base/summary.o $(CXXFLAGS)

net/endpoint.o: net/endpoint.cpp
	$(CPP) -c net/endpoint.cpp -o net/endpoint.o $(CXXFLAGS)

minercave_private.res: minercave_private.rc 
	$(WINDRES) -i minercave_private.rc -F pe-i386 --input-format=rc -o minercave_private.res -O coff 
