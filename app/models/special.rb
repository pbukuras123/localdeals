class Special < ApplicationRecord
	validates :day, presence: true, length: { minimum: 6, maximum: 10}
	validates :title, presence: true, length: { minimum: 6, maximum: 100}
end