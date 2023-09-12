from datetime import datetime

def calcular_idade(ano_nascimento):
    ano_atual = datetime.now().year  # Obtém o ano atual
    idade = ano_atual - ano_nascimento
    return idade

while True:
    nome = input("Qual é o seu nome completo? ")
    
    while True:
        try:
            ano_nascimento = int(input("Em que ano você nasceu? "))
            if 1922 <= ano_nascimento <= datetime.now().year:
                break
            else:
                print("Digite um ano de nascimento entre 1922 e o ano atual.")
        except ValueError:
            print("Digite um ano válido.")
    
    idade = calcular_idade(ano_nascimento)
    
    print(f"{nome}, em {datetime.now().year}, você completou ou completará {idade} anos.")
    
