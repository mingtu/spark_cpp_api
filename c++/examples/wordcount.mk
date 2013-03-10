CXX = g++
CC = gcc

INCLUDES = -I/home/software/java/jdk1.6.0_37/include \
		-I/home/software/java/jdk1.6.0_37/include/linux \
		-I/home/software/java/jdk1.6.0_37/jre/lib/amd64/server/ \
		-I/home/bolei/workspace/spark-0.6.0/c++ \
		-I/home/bolei/workspace/spark-0.6.0/c++/spark 
		
CLIBS =	-L/usr/local/lib -lsparkAPI \
		-L/home/software/java/jdk1.6.0_37/jre/lib/amd64/server/ -ljvm 

EXEC_OBJ = main.o 

EXEC = client

$(EXEC): $(EXEC_OBJ)
	@echo buidling...
	$(CXX) $(INCLUDES) -o $(EXEC) $(EXEC_OBJ) $(CLIBS)

$(EXEC_OBJ): main.cpp
	$(CXX) $(INCLUDES) -c main.cpp 

.PHONY: clean
clean:
	rm -rf *.o 