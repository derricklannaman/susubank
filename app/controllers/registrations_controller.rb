class RegistrationsController < Devise::RegistrationsController

  def new
    @user = SusuUser.new()
  end

  def create
    @user = SusuUser.new(user_params)
    save_user_or_show_new @user
  end

  def update
  end


  private
    def user_params
      params.require(:susu_user).permit( :first_name, :last_name, :email,
                                         :password, :password_confirmation)
    end

    def after_sign_up_path_for(user)
      dashboard_path
    end

    def save_user_or_show_new(user)
      if @user.save
        sign_in_and_redirect user
      else
        render :new
      end
    end


end
