class Item < ApplicationRecord
  def self.partial_match(input = '')
    where('description like ?', "%#{input}%")
  end
end
