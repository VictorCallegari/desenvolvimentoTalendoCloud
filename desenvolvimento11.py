def calc_dados(): #definindo a função sem parâmetros as operações e os números a serem operados são solicitados ao usuário diretamente dentro da função.
    
    while True: #Utilizando o while para criar um loop infinito

        print("Escolha a Operação:")
        print("1: Soma ")
        print("2: Subtração ")
        print("3: Multiplicação ")
        print("4: Divisão ")
        print("0: Sair ")

        escolha_operacao = input("Digite o número da operação ")
    
        if escolha_operacao == '0':
            print("Saindo da calculadora.")
            break
        elif escolha_operacao in ('1', '2', '3', '4'):
            num1 = float(input("Digite o primeiro número: "))
            num2 = float(input("Digite o segundo número: "))

            if escolha_operacao == '1':
                resultado = num1 + num2
                print(f"Resultado: {resultado}")
            elif escolha_operacao == '2':
                resultado = num1 - num2
                print(f"Resultado: {resultado}")
            elif escolha_operacao == '3':
                resultado = num1 * num2
                print(f"Resultado: {resultado}")
            elif escolha_operacao == '4':
                if num2 == 0:
                    print("Erro: Divisão por zero.")
                else:
                    resultado = num1 / num2
                    print(f"Resultado: {resultado}")
        else:
            print("Essa opção não existe. Tente novamente.")

calc_dados()