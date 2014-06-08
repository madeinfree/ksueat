class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  has_many :comments
  has_many :foodpoint
  has_many :foods

  has_many :participated_groups, through: :foodpoint, source: :foods

  extend OmniauthCallbacks

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  #輸入限制
  validates :name, presence: true
  validates :school, presence: true
  validates :faculty, presence: true

  def is_include_of?(point)
    participated_groups.include?(point)
  end

end
