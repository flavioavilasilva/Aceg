# encoding: UTF-8
class UserMailer < ActionMailer::Base
  default from: "flavio.avila.silva@outlook.com"
  
  def notificacao_email_adotando(adocao_animal)
    @usuario = AdotandoAnimal.find(adocao_animal.adotando_animal.id)
    @animal = Animal.find(adocao_animal.animal_id)
    
    @link_adotando = ConfirmacaoAdocao.gera_url_confirmacao_adotando(adocao_animal.id)
    @msg  = 'teste adotando'
    
    mail(to: @usuario.email, subject: 'ACEG - Confirmação de adoção de animal')
  end
  
  def notificacao_confirmacao_adocao_adotando(confirmacao_adocao)
    
    @adotando = AdotandoAnimal.find(confirmacao_adocao.adocao_animal.adotando_animal.id)
    @animal = Animal.find(confirmacao_adocao.adocao_animal.animal_id)
    @msg = 'Teste confirmação adoção adotando'
    
    mail(to: @adotando.email, subject: 'ACEG - Pendência de confirmação')
  end
  
  def notificacao_email_doador(adocao_animal)    
    @usuario = DoadorAnimal.find(adocao_animal.doador_animal.id)
    @animal = Animal.find(adocao_animal.animal_id)
    
    @link_doador = ConfirmacaoAdocao.gera_url_confirmacao_doador(adocao_animal.id)
    @msg  = 'teste doador'
    
    mail(to: @usuario.email, subject: 'ACEG - Seu animal foi adotado!')
  end
  
  def notificacao_confirmacao_adocao_doador(confirmacao_adocao)
    
    @doador = DoadorAnimal.find(confirmacao_adocao.adocao_animal.doador_animal.id)
    @animal = Animal.find(confirmacao_adocao.adocao_animal.animal_id)
    @msg = 'Teste confirmação adoção doador'
    
    mail(to: @doador.email, subject: 'ACEG - Pendência de confirmação')
    
  end
  
end



