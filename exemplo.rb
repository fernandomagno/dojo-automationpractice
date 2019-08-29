module Pages
  class Exemplo < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :titulo_autenticacao, '#center_column > h1'
    element :inpt_email, '#email'
    element :inpt_senha, '#passwd'
    element :btn_login, '#SubmitLogin > span'    
    #formulario do usuario novo
    element :novo_email, '#email_create'
    element :btn_login2, '#SubmitCreate'
    element :input_mr, '#uniform-id_gender1'   
    element :input_first_name, '#customer_firstname' 
    element :input_last_name, '#customer_lastname'     
    element :input_email2, '#email'     
    element :input_password, '#passwd' 
    element :input_address, '#address1' 
    element :input_city, '#city' 
    element :input_state, '#id_state [value="1"]'    
    element :input_zip, '#postcode'
    element :input_country, '#uniform-id_country'
    element :input_mobile, '#phone_mobile'
    element :input_address_future, '#alias'

    def preencher_email_senha(email, senha)
      inpt_email.send_keys(email)
      inpt_senha.send_keys(senha)
    end

    def preencher_usuario_novo(email)
        novo_email.send_keys(email)
        btn_login2.click        
        input_mr.click
        input_first_name.send_keys 'Fernando'        
        input_last_name.send_keys 'Magno'         
        input_password.send_keys '123456'
        input_address.send_keys 'teste'
        input_city.send_keys 'Miami'
        input_state.click
        input_zip.send_keys '10109'        
        input_mobile.send_keys '011947213168'                
        input_address_future.send_keys 'magno@teste.com'     
        sleep 10   
    end

    def efetuar_compra
      
    end

  end

end
