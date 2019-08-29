    Dado('que eu acesse a tela de login') do
      $exemplo_pages.exemplo_page.load
      expect($exemplo_pages.exemplo_page.titulo_autenticacao.text).to eql 'AUTHENTICATION'
    end

    Quando('preencher as informações {string} {string}') do |email, senha|
      $exemplo_pages.exemplo_page.preencher_email_senha(email, senha)
      $exemplo_pages.exemplo_page.btn_login.click
    end

    Então('validar o site redirecionou de forma {string}') do |tipo|

    end

    Dado("que eu acesse a tela de login de cadastro") do
      $exemplo_pages.exemplo_page.load
      expect($exemplo_pages.exemplo_page.titulo_autenticacao.text).to eql 'AUTHENTICATION'
    end

    Quando("preencher as informações do formulario {string}") do |email|
      $exemplo_pages.exemplo_page.preencher_usuario_novo(email)      
    end

    Então("validar a seguinte mensagem {string}") do |mensagem|
      expect(page).to have_content mensagem
    end

       
    Então("validar se a compra foi efetuada com sucesso") do
      
    end
