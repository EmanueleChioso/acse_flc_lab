
the excercise is clearly an expression, associative and left recursive.

Acse.lex 
    
    @ {return CHIOCCIOLA;}

Acse.y

    %token CHIOCCIOLA

    %nonassoc CHIOCCIOLA //before the NOT_OP


firstly we have to 'sanitize' our input and be sure

    exp:   IDENTIFIER CHIOCCIOLA IDENTIFIER {
        t_axe_variable *array1 = getVariable(program, $1);
        t_axe_variable *array2 = getVariable(program, $3);
        if (!array1->isArray || !array2->isArray || 
                    array1->arraySize != array2->arraySize) 
            notifyError(AXE_INVALID_VARIABLE);

creation of labels to loop 

        t_axe_label *end = newLabel(program);
        t_axe_label *start = newLabel(program);

variable declarations </br>
`result` is a REGISTER set to 0 </br>
`index_reg` is a REGISTER set to arraySize-1 </br>
`tmp` is REGISTER used to store the multiplication between array1[i] and array2[i] </br>


        int result = getNewRegister(program);
        gen_addi_instruction(program, result, REG_0, 0);

        int index_reg = getNewRegister(program);
        gen_addi_instruction(program, index_reg, REG_0, array1->arraySize);
        gen_subi_instruction(program,index_reg, index_reg, 1);

        int tmp = getNewRegister(program);

loop: </br>
multiplication -> add to result -> update index -> jump to end if index<0

        assignLabel(program, start);
        gen_mul_instruction(program, tmp, 
                loadArrayElement(program , $1, create_expression(index_reg,REGISTER)),
                loadArrayElement(program , $3, create_expression(index_reg,REGISTER)), CG_DIRECT_ALL);
        gen_add_instruction(program, result, result, tmp, CG_DIRECT_ALL); 

        gen_subi_instruction(program, index_reg,index_reg,1); //index 

        //jump 
        gen_andb_instruction(program, index_reg, index_reg, index_reg, CG_DIRECT_ALL);
        gen_blt_instruction(program, end, 0);
        gen_bt_instruction(program, start,0);



        

since we declared it as an expression, we must return an expression 
        assignLabel(program, end);

        free($1);
        free($3);
        $$ = create_expression (result, REGISTER);
    }
