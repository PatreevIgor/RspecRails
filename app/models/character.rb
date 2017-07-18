class Character < ApplicationRecord

  def attributes
    m = []
    m.push(self.name, self.age)
  end
end
