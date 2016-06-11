class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :payments , :class_name => "Payment", :foreign_key => "payee_id"
  has_many :payments , :class_name => "Payment", :foreign_key => "payer_id"
  has_many :bills
  has_many :payees, :through => :payments
  has_many :beneficiaries, :through => :bills
end
