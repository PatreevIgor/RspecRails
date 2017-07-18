class Character < ApplicationRecord

  def attributes_name_and_age
    m = []
    m.push(self.name, self.age)
  end
end
