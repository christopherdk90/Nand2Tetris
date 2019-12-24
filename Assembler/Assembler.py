import sys

with open(sys.argv[1], 'r') as myFile:
    line = myFile.readline()
    while line:
        fixedLine = ""
        binary = ""
        for char in line:
            if char == '/':
                if char == '/':
                    break
            fixedLine += char
        if fixedLine[1] == '@':
            print("yes")
        sys.stdout.write(fixedLine)
        line = myFile.readline()
