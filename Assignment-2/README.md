### Qn 2

```bash
# Generate lexer (scanner)
lex 2-count_a.l

# Generates parser (y.tab.c)
yacc -d 2-count_a.y #-d generates the header file (y.tab.h)

# Compile the generated file
gcc -o 2-count_a lex.yy.c y.tab.c -ll

# Run the program
./2-count_a
```