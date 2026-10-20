import sys
import os
from SymbolTable import SymbolTable
from Parser import Parser
from Code import Code

class HackAssembler:
    def __init__(self, inputPath):
        self.inputPath = inputPath
        self.symbolTable = SymbolTable()
        self.code = Code()

    #First Pass of the parser, it will find all of the addresses of the labels
    def firstPass(self):
        parser = Parser(self.inputPath)
        nextInstruction = 0 #This will have the address of the next instruction 
        while parser.hasMoreLines():
            parser.advance()
            if parser.instructionType() == Parser.L_INSTRUCTION:
                #This will create a entry into the symbole table when it gets a L_INSTRUCTION, which is a label, and it will have the address of the next instruction
                #The label has no code so it points to the next line
                self.symbolTable.addEntry(parser.symbol(), nextInstruction)
            else:
                #Increases which instruiction you are looking at
                nextInstruction += 1

    #Second Pass of the parser it will translate the instruction into binary 16 bits
    def secondPass(self):
        parser = Parser(self.inputPath)
        output = []
        nextVariable = 16 #This is the next open variable space which starts at 16

        while parser.hasMoreLines():
            parser.advance()
            instructType = parser.instructionType()

            if instructType == Parser.A_INSTRUCTION:
                symbol = parser.symbol()
                if symbol.isdigit():
                    value = int(symbol) #This is dealing with @17 for example since it will formate the number as the binary

                elif self.symbolTable.contains(symbol):
                    value = self.symbolTable.getAddress(symbol) #This is dealing with @LOOP for example since it will get the address of the label from the first pass
                else:
                    self.symbolTable.addEntry(symbol, nextVariable) #This is dealing with @i for example since it will add the variable to the table and then take that value from 16 on
                    value = nextVariable
                    nextVariable += 1
                output.append(format(value, "016b")) #This will format the value into 16 bits binary

            #This section will deal with the C instructions, which are dealt with by the below functions
            elif instructType == Parser.C_INSTRUCTION:
                bits = ("111"
                        + self.code.comp(parser.comp())
                        + self.code.dest(parser.dest())
                        + self.code.jump(parser.jump()))
                output.append(bits)

        return output

    #This section will run the assembler, which will call the first pase and the second pass then write the .hack file
    def assemble(self):
        self.firstPass()
        lines = self.secondPass()
        outputPath = os.path.splitext(self.inputPath)[0] + ".hack"
        with open(outputPath, "w") as f:
            for line in lines:
                f.write(line + "\n")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 HackAssembler.py <file.asm>")
        sys.exit(1)
    HackAssembler(sys.argv[1]).assemble()