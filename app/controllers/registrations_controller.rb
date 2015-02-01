class RegistrationsController < Devise::RegistrationsController

  def new
    @user = SusuUser.new()
  end

  def create
  end

  def update
  end



  def user_params
    params.require(:user).permit( :first_name, :last_name, :email)
  end



end
