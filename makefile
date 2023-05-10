CC=gcc     #especificacao do compilador a ser usado
CFLAGS=-I. #definicao da compilacao para compilador e otimizacao

all: calcula #construir o executavel calculo

calcula: main.o calcula.o
        $(CC) $(LDFLAGS) -o $@ $^

main.o: main.c calcula.h
        $(CC) $(CFLAGS) -c $< -o $@

calculo.o: calcula.c calcula.h
        $(CC) $(CFLAGS) -c $< -o $@

clean: #comando clean para remover os arquivos
        rm -f *.o calcula
