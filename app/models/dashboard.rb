class Dashboard < ActiveRecord::Base

  belongs_to :susu_user, :dependent => :destroy

end
