class Bill < ActiveRecord::Base
  belongs_to :payer , :class_name => "User", :foreign_key => "payer_id"
  belongs_to :beneficiary , :class_name => "User", :foreign_key => "beneficiary_id"
end
