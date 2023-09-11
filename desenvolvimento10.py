def calc_dados(num1, num2): #definindo a função e nomeando os parâmetros
    calc_comando = input("Qual a operação? ")

    if calc_comando == "+": #definindo qual será a operação escolhida
        calc_calculo = num1 + num2
        return calc_calculo, "Soma" #retorno da função

    elif calc_comando == "-":
        calc_calculo = num1 - num2
        return calc_calculo, "Subtração"

    elif calc_comando == "*":
        calc_calculo = num1 * num2
        return calc_calculo, "Multiplicação"

    elif calc_comando == "/":
        if num2 == 0:
            return "Divisão por zero não é permitida"
        calc_calculo = num1 / num2
        return calc_calculo, "Divisão"
    
    else:
        return "Operação inválida"

num1 = float(input("Digite um número: "))
num2 = float(input("Digite outro número: "))

resultado, tipo_operacao = calc_dados(num1, num2) #tupla para retornar ambos na função calc_dados

if isinstance(resultado, (float, int)): #verifica se o resultado é float ou int antes de imprimir
    print(f"O resultado da {tipo_operacao} é: {resultado:.2f}")
else:
    print(resultado)