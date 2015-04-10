class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  #after_initialize :set_default_role, :if => :new_record?

  
  #def set_default_role
    #self.role ||= :user
  #end
  belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :licenseId, presence: true, :if => "isRealtor?"
  has_many :residentials, dependent: :destroy
  has_many :subscriptionpackages, dependent: :destroy
  has_many :sales, class_name: "Order", foreign_key: "seller_id"
  has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
  has_many :subscriptions, dependent: :destroy
  has_many :sales, class_name: "Plan", foreign_key: "seller_id"
  has_many :purchases, class_name: "Plan", foreign_key: "buyer_id"
end
