class Group < ActiveRecord::Base
	has_many :users
	belongs_to :owner, :class_name => "User"
	has_many :lists
	has_many :rewards
	has_many :comments
	has_many :commenting_users, through: :comments, :source => :user
end
