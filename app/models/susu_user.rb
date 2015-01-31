class SusuUser < ActiveRecord::Base
  after_save :create_dashboard

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



private

  def create_dashboard
    Dashboard.create(susu_user_id: self.id)
  end

end
