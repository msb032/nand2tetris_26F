class Code:

    COMPUTATION_TABLE = {
        "0": "0101010",
        "1": "0111111",
        "-1": "0111010",
        "D": "0001100",
        "A": "0110000",
        "M": "1110000",
        "!D": "0001101",
        "!A": "0110001",
        "!M": "1110001",
        "-D": "0001111",
        "-A": "0110011",
        "-M": "1110011",
        "D+1": "0011111",
        "A+1": "0110111",
        "M+1": "1110111",
        "D-1": "0001110",
        "A-1": "0110010",
        "M-1": "1110010",
        "D+A": "0000010",
        "D+M": "1000010",
        "D-A": "0010011",
        "D-M": "1010011",
        "A-D": "0000111",
        "M-D": "1000111",
        "D&A": "0000000",
        "D&M": "1000000",
        "D|A": "0010101",
        "D|M": "1010101",
    }

    JUMP_TABLE = {
        None : "000",
        "JGT": "001",
        "JEQ": "010",
        "JGE": "011",
        "JLT": "100",
        "JNE": "101",
        "JLE": "110",
        "JMP": "111",
    }


    #Returns the binary code for the dest section of the C instruction
    #if it has A then the first bit is high, if D then second bit is high, if M then the third bit is high
    def dest(self, destSection):
        if destSection is None:
            return "000"
        else:
            if "A" in destSection:
                d1 = "1"
            else:
                d1 = "0"
            if "D" in destSection:
                d2 = "1"
            else:
                d2 = "0"
            if "M" in destSection:
                d3 = "1"
            else:
                d3 = "0"
            return d1+ d2 + d3


    #Returns the binary code for the computation section of the C instruction, which was found above with the table
    def comp(self, compSection):
        return Code.COMPUTATION_TABLE[compSection]

    #Returns the binary code for the jump section of the C instruction, which was found above with the table
    def jump(self, jumpSection):
        return Code.JUMP_TABLE[jumpSection]
        