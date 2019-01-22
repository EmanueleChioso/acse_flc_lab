#!/bin/bash

if [ $# -gt 0 ]; then
    
    cp acse/Acse.y exercises/$1/Acse_$1.y
    cp acse/Acse.lex exercises/$1/Acse_$1.lex

    cp clean/Acse.y acse/Acse.y
    cp clean/Acse.lex acse/Acse.lex

    cp $1.src exercises/$1/$1.src
    rm $1.src


    rm sy_table.out
    rm regalloc.out
    rm dataflow.cfg
    rm output.cfg
    rm -r bin
    rm acse/lex.yy.c
    rm acse/Acse.tab.h
    rm acse/Acse.tab.c

    rm assembler/lex.yy.c
    rm assembler/assembler.tab.h
    rm assembler/assembler.tab.c

    rm mace/main.o
    rm mace/decode.o
    rm mace/getbits.o
    rm mace/fetch.o
    rm mace/machine.o
    rm mace/main.d
    rm mace/decode.d
    rm mace/getbits.d
    rm mace/fetch.d
    rm mace/machine.d

fi