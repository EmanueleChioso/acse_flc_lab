# POLIMI - Formal Languages and Compilers 
## working laboratory readable and explained exam solutions
this is a repository with all my solutions to laboratory exam tests. 

Latest ACSE (Advanced Compiler System for Education) compiler can be found on the teacher Barenghi's website.  [ACSE](http://home.deib.polimi.it/barenghi/doku.php?id=teaching:flc "ACSE")

This version of makefile has been edited to work under macOS by [zebfra](https://github.com/zerbfra) in [this](https://github.com/zerbfra/acse) repository. 
<br><br>
## how to use 

to test a solution you have to modify the `acse/Acse.y` and `acse/Acse.lex` files and create `a source_file.src` in the root folder 

use the batch file to do the `make`, clean the folder and execute the folder. 
> ./ run.bat sourcefilename

when you have finished working on that exam, run the cleaner batch that moves the source file to its own folder and reset the acse files with the clean ones

> ./ clean.bat sourcefilename      

NB: sourcefilename without the exension
<br><br><br>


## how to use without batch files

To install the ACSE compiler type in the console: `make`

To compile some examples (located in the directory ./tests) type: `make tests`

In order to use the compiler/assembler/executor at first you have to export the directory ./bin in your current PATH as follows:
`export PATH=`pwd`/bin:$PATH`


You can compile and run new Lance programs in this way (suppose you have saved a Lance program in 'myprog.src'):

`acse myprog.src myprog.asm`

`asm myprog.asm myprog.o`

`mace myprog.o`