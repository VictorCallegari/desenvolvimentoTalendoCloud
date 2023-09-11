import time

andaratual = 20

andarsolicitado = int(input("Digite em qual andar você deseja ir: "))

# Utilizando o While
while andarsolicitado != andaratual:
    if andaratual != 13: #pula o numero 13
        print(andaratual)
    andaratual -= 1
    time.sleep(1)  # Pausa por 1 segundo

print(f"Você chegou ao {andaratual} andar.")

#Utilizando o for
for i in range(andaratual, andarsolicitado, -1):
    if i != 13:  # Pula o número 13
        print(i)
    andaratual = i
    time.sleep(1)  # Pausa por 1 segundo

print(f"Você chegou ao {andarsolicitado} andar.")



