class Order < ApplicationRecord
	has_many :line_items, dependent: :destroy
	PAYMENT_TYPES = ["Наличными","Картой","Web Money"]

	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES
end
