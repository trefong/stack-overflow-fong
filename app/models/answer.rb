class Answer < ActiveRecord::Base
  # Remember to create a migration!
    has_many :comments, as: :commentable
    belongs_to :user, :question

end
