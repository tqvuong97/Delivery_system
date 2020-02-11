class Order < ApplicationRecord
  belongs_to :user
  has_many :items
  accepts_nested_attributes_for :items
  def self.generate_rand_code_order
    array = []
    8.times do |n|
      array << rand(10)
    end
    array.join.to_s
  end
end
