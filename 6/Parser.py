class Parser:
    A_INSTRUCTION = "A_INSTRUCTION"
    C_INSTRUCTION = "C_INSTRUCTION"
    L_INSTRUCTION = "L_INSTRUCTION"

    def __init__(self, inputPath):
        # read the file once keeping the cleaned version 
        with open(inputPath, "r") as f:
            lines = f.readlines()

        #This is a array that will hold all of the instructions
        self.instructions = []
        for line in lines:
            #Getting rid of the comments and whitespace
            line = line.split("//")[0].strip()
            if line:
                self.instructions.append(line)

        self.index = -1              # no current instruction yet
        self.currentInstruction = None

    #Checks to see if the instructions has more lines of code within it
    def hasMoreLines(self):
        return self.index + 1 < len(self.instructions)

    #Sets the next instruction to be the current instruction and returns it
    def advance(self):
        self.index += 1
        self.currentInstruction = self.instructions[self.index]
        return self.currentInstruction


    #Return the instruction type of the current instruction
    def instructionType(self):
        if self.currentInstruction.startswith("@"):
            return Parser.A_INSTRUCTION
        elif self.currentInstruction.startswith("("):
            return Parser.L_INSTRUCTION
        else:
            return Parser.C_INSTRUCTION


    #Return the currrent instructions symbol (String)
    def symbol(self):
        if self.instructionType() == Parser.A_INSTRUCTION:
            return self.currentInstruction[1:]  # remove the front @
        elif self.instructionType() == Parser.L_INSTRUCTION:
            return self.currentInstruction[1:-1] #Remove the front and back parentheses

    #Returns the left side of the equations of C instructions
    def dest(self):
        if self.instructionType() == Parser.C_INSTRUCTION:
            if "=" in self.currentInstruction:
                return self.currentInstruction.split("=")[0]
            else:
                return None


    #Returning the instructions comp field, which is the side to the right of the equals that does not include the jump
    def comp(self):
        if self.instructionType() == Parser.C_INSTRUCTION:
            c = self.currentInstruction
            if "=" in c:
                #Keep the part after the equals
                c = c.split("=")[1]
            if ";" in c:
                #Keep the part before the ;
                c = c.split(";")[0]
            return c
        return None


    #Return the jump portion of the c instruction
    def jump(self):
        if self.instructionType() == Parser.C_INSTRUCTION:
            if ";" in self.currentInstruction:
                return self.currentInstruction.split(";")[1]
        return None

