class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create
    @user = User.new(sign_up_params)
    respond_to do |format|
      excel
      if @user.save
        format.html {redirect_to edit_user_registration_url}
        format.json
      else
        format.html {render :new}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :curp, :tipo_beca, :institucion, :primer_apellido,
                                 :segundo_apellido, :nombre, :genero, :nacionalidad, :dia, :mes, :anio, :edad, :poblacion,
                                 :municipio, :estado, :estado_civil, :procedencia, :oportunidades, :etnia, :discapacidad,
                                 :local_foraneo, :carrera, :programa, :periodo, :periodo_curso, :anio_curso, :monto, :prom_bach,
                                 :prom_carrera, :prom_ciclo, :area_conocimiento, :ingreso_hogar, :pers_hogar, :matricula)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def excel
    workbook = RubyXL::Parser.parse('public/file.xlsx')
    worksheet = workbook[0]
    worksheet[0][0].change_contents('random works! :D')
    workbook.write('public/cambio.xlsx')
  end
end
