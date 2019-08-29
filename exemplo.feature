#language: pt

@fluxo_login
Funcionalidade: Login - Validar que é possivel realizar login
  Eu como usuário quero poder
  Realizar login no site para realizar
  Compra de produtos.

  @validar_login_valido_invalido
  Esquema do Cenario: Login - Validar login com usuário válido e inválido
    Dado que eu acesse a tela de login
    Quando preencher as informações "<email>" "<email>"
    Então validar o site redirecionou de forma "<tipo>"

    Exemplos:
      | tipo     | email                                   | senha      |
      | positiva | exemplo.automation@mailsac.com          | testes_123 |
      | negativa | invalido_exemplo.automation@mailsac.com | testes_321 |

  @validar_cadastro_formulario
  Esquema do Cenario: Login - Validar cadastro do formulario
    Dado que eu acesse a tela de login de cadastro
    Quando preencher as informações do formulario "<email>" 
    Então validar a seguinte mensagem "MY ACCOUNT"

    Exemplos:
      | tipo     | email                                   | 
      | positiva | 123fernando@teste.com                   | 
      #| negativa | invalido_exemplo.automation@mailsac.com | 

  @validar_compra_site
  Esquema do Cenario: Login - Validar compra site
    Dado que eu acesse a tela de login
    Quando preencher as informações "<email>" "<senha>"
    Então validar se a compra foi efetuada com sucesso

    Exemplos:
      | tipo     | email                                   | senha      |
      | positiva | exemplo.automation@mailsac.com          | testes_123 |
      | negativa | fernando@teste.com                      | 123456     |

    
