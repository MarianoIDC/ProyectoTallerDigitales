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
            