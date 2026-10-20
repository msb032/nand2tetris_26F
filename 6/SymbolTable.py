

class SymbolTable:
    def __init__(self):
        self.table = {}
        #Predefined symboles
        self.table["SP"] = 0
        self.table["LCL"] = 1
        self.table["ARG"] = 2
        self.table["THIS"] = 3
        self.table["THAT"] = 4
        self.table["SCREEN"] = 16384
        self.table["KBD"] = 24576
        #This is calculating all of the R0-R15 registers and puting thim also into the table
        for i in range(16):
            self.table[f"R{i}"] = i

    #Adding a entry to the above table
    def addEntry(self, symbol, address):
        self.table[symbol] = address

    #Can check to see if a symbol is within the table
    def contains(self, symbol):
        return symbol in self.table

    #Get the address of a symbol within the table
    def getAddress(self, symbol):
        return self.table[symbol]