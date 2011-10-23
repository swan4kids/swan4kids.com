class StaffMember < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :title, :bio]

  validates :name, :presence => true, :uniqueness => true

end
