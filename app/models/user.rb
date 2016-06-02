class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  has_many :questions, :answers, :comments

end
