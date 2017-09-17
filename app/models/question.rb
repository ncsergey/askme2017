# (c) goodprogrammer.ru

# Модель вопроса.
class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  validates :user, :text, presence: true
end
