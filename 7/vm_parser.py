'''
N2T VM Translator, Project 7, Parser
stough F26

Parser class and the CommandType constants
follow the API specified in N2T Ch 7.
'''

from enum import Enum

class CommandType(Enum):
    C_ARITHMETIC = 0
    C_PUSH      = 1
    C_POP       = 2
    C_LABEL     = 3
    C_GOTO      = 4
    C_IF        = 5
    C_FUNCTION  = 6
    C_RETURN    = 7
    C_CALL      = 8
    C_NONE      = 9

arithmetic_all = [ 'add', 'sub', 'neg', 'eq', 'gt', 'lt', 'and', 'or', 'not' ]
arithmetic_comp = [ 'eq', 'gt', 'lt' ]
arithmetic_unary = [ 'neg', 'not' ]
arithmetic_binary = [ 'add', 'sub', 'and', 'or' ]

class Parser(object):
    def __init__(self, inputfile):
        self._inputfile = inputfile
        self._lines = []
        self._preprocessFile()
        self._cur = -1
        self._ctype = CommandType.C_NONE
        self._carg1 = None
        self._carg2 = None

    #This function will check to make sure that there are more lines to read in the file
    #If there are it will return True if not false
    def hasMoreLines(self):
        if self._cur + 1 < len(self._lines):
            return True
        else:
            return False

    #This function will advance the parser to the next line and set it as the current line
    def advance(self) -> None:
        if self.hasMoreLines():
            self._cur += 1
            self._interpretLine()
        pass

    def curLine(self):
        assert self._cur >= 0, 'Parser error curLine: no current line.\n'
        return self._lines[self._cur]

    def commandType(self):
        assert self._ctype != CommandType.C_NONE, \
            f'Parser Error: no current line at #{self._cur}.\n'
        return self._ctype

    def arg1(self):
        assert self._ctype != CommandType.C_RETURN, \
            f'Parser Error: no arg1 for {self._lines[self._cur]}.\n'
        return self._carg1

    def arg2(self):
        assert self._ctype in [CommandType.C_PUSH, CommandType.C_POP, \
                               CommandType.C_FUNCTION, CommandType.C_CALL], \
                                f'Parser Error: no arg2 for {self._lines[self._cur]}.\n'
        return self._carg2

    def _interpretLine(self) -> None:
        line = self._lines[self._cur]
        tokens = [x for x in line.split(' ') if len(x)>0]

        assert len(tokens) > 0, 'Parser Error: could not tokenize {line}.\n'\

        ## LINE INTERPRETATION GOES HERE: be sure to set all of _ctype, _carg1, and _carg2
        # based on what tokens[0] is (maybe it's 'push', maybe it's 'lt', ...)

        # Read the first token and select among push/pop/arithmetic

        if tokens[0] == "push":
            self._ctype = CommandType.C_PUSH
            self._carg1 = tokens[1]
            self._carg2 = int(tokens[2])
        elif tokens[0] == "pop":
            self._ctype = CommandType.C_POP
            self._carg1 = tokens[1]
            self._carg2 = int(tokens[2])
        elif tokens[0] in arithmetic_all:
            self._ctype = CommandType.C_ARITHMETIC
            self._carg1 = tokens[0]
            self._carg2 = None
        else:
            print(f'Parser: this parser does not process {line}, will force C_LABEL.\n')
            self._ctype = CommandType.C_LABEL
            self._carg1 = None
            self._carg2 = None


    def _preprocessFile(self) -> None:
        '''Preprocess the input file, removing comments and whitespace, and storing
        the lines in self.lines. '''
        try:
            with open(self._inputfile, 'r') as f:
                all_lines = f.read().splitlines()           
        except FileNotFoundError:
            print(f'Read Error: could not read {self._inputfile}.')
            raise
        # filter the lines for comments and blanks:
        for line in all_lines:
            line = line.split('//')[0].strip()
            if line == '':
                continue
            self._lines.append(line)