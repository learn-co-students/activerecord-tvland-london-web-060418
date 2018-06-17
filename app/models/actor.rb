class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    roles = self.characters
    roles.map do |role|
      role.name + " - " + Show.find(role.show_id).name
    end
  end
end
