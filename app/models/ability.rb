# encoding:UTF-8
class Ability
  include CanCan::Ability
  
  def initialize(usuario)

    puts usuario
    
    usuario ||= Usuario.new # Guest user
    
    if usuario.kind_of? Admin
      can :manage, :all
    elsif usuario.kind_of? Usuario
      can :read, :all
      can :create, Animal
    end
    
    permissoes_doador = seta_permissoes_doador(usuario)
    permissoes_adotando = seta_permissoes_adotando(usuario)
    
  end
  
  def seta_permissoes_doador(doador_animal)
    
    #Permissões para doador
    if !doador_animal.blank?
      
      #Habilita controle do animal ao doador
      can :manage,  Animal do |animal|
        
        animal.try(:doador_animal)==doador_animal
        can :manage, animal
        
      end
      
      
      #Habilita controle da confirmação da doação para o doador
      can :update, ConfirmacaoAdocao do |confirmacao_adocao|
        
        adocao_animal_doador = AdocaoAnimal.where('doador_animal_id=?',doador_animal.id) unless doador_animal.id.blank?
        
        adocao_animal_doador.each do |adocao_animal|
          confirmacao_adocao.try(:adocao_animal)==adocao_animal
        end
        
      end
      
    end
    
    permissoes = 'Permissões setados com sucesso!'
    
  end
  
  def seta_permissoes_adotando(adotando_animal)
    #Permissões para doador
    if !adotando_animal.blank?
      
      #Adocão
      can :create, AdocaoAnimal
      can :update, AdocaoAnimal
      
      #Habilita controle da confirmação da doação para o adotando
      can :update, ConfirmacaoAdocao do |confirmacao_adocao|
        
        adocao_animal_doador = AdocaoAnimal.where('adotando_animal_id=?',adotando_animal.id) unless adotando_animal.id.blank?
        
        adocao_animal_doador.each do |adocao_animal|
          confirmacao_adocao.try(:adocao_animal)==adocao_animal
        end
        
      end
      
    end
    
    permissoes = 'Permissões setados com sucesso!'
  end
  
  
end