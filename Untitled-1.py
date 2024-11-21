def agrupar_frase(frase):
    """Agrupa la frase en pares de caracteres."""
    return [frase[i:i+2] for i in range(0, len(frase), 2)]

def cifrar(pares, clave_a, clave_b):
    """Cifra los pares de caracteres usando las claves."""
    cifrado = {}
    for i, par in enumerate(pares):
        x0 = (ord(par[0]) * clave_a + clave_b) % 256  # Operación para el primer carácter
        x1 = (ord(par[1]) * clave_a + clave_b) % 256 if len(par) > 1 else 0  # Segundo carácter
        cifrado[f'x{i}'] = (chr(x0), chr(x1) if x1 != 0 else '')  # Guardamos como caracteres cifrados
    return cifrado

def descifrar(cifrado, clave_a, clave_b):
    """Descifra los pares de caracteres cifrados."""
    descifrado = {}
    clave_a_inv = pow(clave_a, -1, 256)  # Inversa modular de clave_a
    for key, (char1, char2) in cifrado.items():
        y0 = (ord(char1) - clave_b) * clave_a_inv % 256
        y1 = (ord(char2) - clave_b) * clave_a_inv % 256 if char2 else 0
        descifrado[key] = (chr(y0), chr(y1) if y1 != 0 else '')
    return descifrado

# Claves fijas (nunca cambian)
CLAVE_A = 175
CLAVE_B = 673

# Entrada del usuario
frase = input("Inserte la frase a encriptar: ")

# Proceso de encriptación
pares = agrupar_frase(frase)
print(f"Frase agrupada: {pares}")
cifrado = cifrar(pares, CLAVE_A, CLAVE_B)
print(f"Palabra Cifrada: {cifrado}")

# Proceso de desencriptación
descifrado = descifrar(cifrado, CLAVE_A, CLAVE_B)
print(f"Resultados descifrados: {descifrado}")

# Reconstruir la frase descifrada
frase_descifrada = ''.join([f"{par[0]}{par[1]}" for par in descifrado.values()])
print(f"Letras descifradas: {frase_descifrada}")
