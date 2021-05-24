from validateStr import *

def string2asc(text):
    text2ascii = []
    n = len(text)
    file = open("code.mem", "w")
    file.write("[")
    if(validateString(text, n)):
        for i in range(n):
            if (i==0):
                text2ascii.append(ord(text[i].lower()))
                file.write(str(text2ascii[i]))
            else:
                text2ascii.append(ord(text[i].lower()))
                file.write(","+str(text2ascii[i]))
            
        for i in range(len(text2ascii)):
            print(chr(text2ascii[i]))
        print(text2ascii)
    else:
        print("La Frase Ingresada tiene caracteres no Validos")
    file.write("]")
    file.close()


string2asc("Valeria")
