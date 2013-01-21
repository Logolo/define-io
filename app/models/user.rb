class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :admin, :name, :email, :password, :password_confirmation, 
  				        :products_reviewed, :remember_me, :reviews_voted_on
  
  has_many :articles, :dependent => :destroy
  has_many :reviews, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  serialize :products_reviewed, Array
  serialize :reviews_voted_on, Hash
  validates :email, :presence => true
  validates :name, :presence => true
end