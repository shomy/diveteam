class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions
  has_many :favorite_questions, dependent: :destroy
  has_many :favo_questions, class_name: "Question", foreign_key: "question_id", through: :favorite_questions, source: :user
end
