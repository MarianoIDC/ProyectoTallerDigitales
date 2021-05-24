from os import terminal_size


def validateString(text, n):
    for i in range(n):
        number = ord(text[i].lower())
        print(number)
        if (96<number<122 or number==32 or number==241):
            print("caracter valido en la posicion: "+str(i))
        else:
            print("caracter "+text[i]+" no valido en la posicion: "+str(i))
            return False
    return True
            
def string2asc(text):   
    text2ascii = []
    n = len(text)
    if(validateString(text, n)):
        file = open("Python\code.mem", "w")
        for i in range(n):
            if (i==0):
                text2ascii.append(ord(text[i].lower()))
                file.write("["+str(text2ascii[i]))
            else:
                text2ascii.append(ord(text[i].lower()))
                file.write(","+str(text2ascii[i]))
        file.write("]")
        file.close()    
        for i in range(len(text2ascii)):
            print(chr(text2ascii[i]))
        print(text2ascii)
    else:
        print("La Frase Ingresada tiene caracteres no Validos")
    


string2asc("Moquito")
