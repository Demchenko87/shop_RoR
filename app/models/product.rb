class Product < ApplicationRecord
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png|jpeg|bmp)\Z}i,
		message: 'Неверный формат изображения используйте только gif|jpg|png|jpeg|bmp'
	}
	def self.latest
		Product.order(:updated_at).last
	end

	private

	    # убеждаемся в отсутствии товарных позиций, которые дают ссылку на этот товар

    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Сужествуют товарные позиции')
        return false
      end
    end

end
