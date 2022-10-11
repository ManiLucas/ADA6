all: calc1 

calc1: lex.yy.c y.tab.c y.tab.h
	gcc -o calc1 lex.yy.c y.tab.c -ll -lm
lex.yy.c:	calc1.l
	flex calc1.l
y.tab.c: calc1.y	
	yacc -d calc1.y
y.tab.h: calc1.y
	yacc -d calc2.y	