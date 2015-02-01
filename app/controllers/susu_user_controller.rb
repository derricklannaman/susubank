class SusuUserController < ApplicationController


  def new
    @user = SusuUser.new(user_params)
  end


private

  def user_params
    params.require(:susu_user).permit( :first_name, :last_name, :email)
  end

end
