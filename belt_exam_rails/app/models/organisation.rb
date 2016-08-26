class Organisation < ActiveRecord::Base
  belongs_to :user
  has_many :groups , dependent: :destroy
  has_many :users_groups, through: :groups, source: :user

  validates :name, :description, :presence => true
  validates_length_of :name, minimum: 5
  validates_length_of :description, minimum: 10
end
