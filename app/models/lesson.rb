class Lesson < ApplicationRecord
  has_many :lesson_video, dependent: :destroy
  has_many :homework, dependent: :destroy
  has_many :comment_lesson, dependent: :destroy
  
  belongs_to :course
end