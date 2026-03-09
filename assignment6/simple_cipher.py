def simpleCipher(encrypted: str , k: int):
    alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    text_lists = []
    decrypted_lists = []
    # split encrypted to a new lists 
    for char in encrypted:
        text_lists.append(char)

    # for loop the text_lists into alphabet and decrypted logic
    for char in text_lists:
        for i in range(len(alphabet)):
            if alphabet[i] == char:
                decrypted_index = i-k
                decrypted_lists.append(alphabet[decrypted_index])
                break

    # Handle empty lists is decrypted_lists is [] return []
    if not decrypted_lists:
        return decrypted_lists
    # if decrypted_lists is not [] make lists to string and return the result
    else:
        decrypted_text = "".join(decrypted_lists)
        return decrypted_text

if __name__ == "__main__":
    decrypted_text = simpleCipher("VTAOG" , 2)
    print("decrypted_text : " , decrypted_text)