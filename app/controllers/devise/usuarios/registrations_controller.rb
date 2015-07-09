class Devise::Usuarios::RegistrationsController < Devise::RegistrationsController
  
  # GET /resource/sign_up
  def new
    
    build_resource({})
    resource.build_perfil
    resource.perfil.endereco_perfil = EnderecoPerfil.new
    respond_with self.resource
    
  end

  def create
    # add custom create logic here
    super
  end

  def update
    
  @user = Usuario.find(current_usuario.id)

    successfully_updated = if needs_password?(@user, params)
      @user.update_with_password(params[:usuario])
    else
      # remove the virtual current_password attribute update_without_password
      # doesn't know how to ignore it
      params[:usuario].delete(:current_password)

      
      @user.update_without_password(params[:usuario])
    end

    if successfully_updated
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
    
  end
  
  # check if we need password to update user data
  # ie if password or email was changed
  # extend this as needed
  def needs_password?(user, params)
    
    user.provider != 'facebook' ||
      params[:usuario][:password].present?
  end
  
end
