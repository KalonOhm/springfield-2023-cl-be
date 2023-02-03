class Group < ApplicationRecord
  validates :group_name, :active_members, :sub_genre, :boy_band, presence: true

  def self.search(query) 
    where("lower(group_name) LIKE :query OR active_members OR lower(sub_genre) OR boy_band LIKE :query", query: "%#{query}%")
  end
end
