programa{
  inteiro din[] = {0, 1}
  inteiro userDefault = 1
  inteiro passDefalt = 123
  inteiro usuario
  inteiro senha,opcao
  real saldo = 0

  funcao inicio(){
    login()
  }

  funcao login(){
    enquanto(usuario != userDefault ou senha != passDefalt){
      escreva("Digite sua conta:")
      leia(usuario)
      escreva("Digite sua senha:")
      leia(senha)
      se(usuario == userDefault e senha == passDefalt){
        mainBanco()
      }senao{
         escreva("Credenciais incorretas, tente novamente!/n")
      }
    }
  }

   funcao mainBanco(){
    escreva("1. Depósitos\n2. Saque\n3. Saldo\n4. Trocar senha\n5. Sair\n")
    leia(opcao)
    escolha(opcao){
      caso 1:
        deposito()
        pare
      caso 2:
       saque()
      pare
      caso 3:
       saldo()
       pare
      caso 4:
       limpa()
       trocarSenha()
       pare
      caso 5:
       limpa()
       sair()
      pare
    }
   }

  funcao saque(){
    real saque
    escreva("Informe a quantia que você gostaria de sacar: \n")
    leia(saque)
    se(saldo > saque){
       saldo = saldo - saque
      escreva("Você agora tem R$", saldo ," na sua conta\nVocê gostaria de fazer alguma outra transação?\n1. Sim\n2. Não\n")
      leia(opcao)
      se(opcao == 1){
        mainBanco()
      }senao se(opcao == 2){
        sair()
      }senao{
        escreva("Opção inválida")
      }
    }senao{
      escreva("Saldo Insuficiente: ")
    }
   
  }

  funcao deposito(){
    real deposito
    escreva("Informe a quantia que você gostaria de depositar: \n")
    leia(deposito)
    saldo = saldo + deposito
    escreva("Você agora tem R$",saldo, " na sua conta\nVocê gostaria de fazer alguma outra transação?\n1. Sim\n2. Não\n")
    leia(opcao)
  
    se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      limpa()
      escreva("Opcao inválida")
    }
  }

  funcao saldo(){
    escreva("Saldo disponível: R$", saldo, "\nVoçê gostaria de fazer alguma outra transação?\n1. Sim\n2. Não\n")
    leia(opcao)  
     se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      limpa()
      escreva("Opcao inválida")
    }
  }

  funcao trocarSenha(){
    inteiro novaSenha
    escreva("Digite sua nova senha: \n")
    leia(novaSenha)
    passDefalt = novaSenha
    limpa()
    escreva("Senha atualizada com sucesso!\n")
  }

  funcao sair(){
    escreva("Obrigado por utilizar nossos serviços.")
  }
}
