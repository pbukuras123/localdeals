class Special < ApplicationRecord
	validates :day, presence: true, length: { minimum: 5, maximum: 10}
	validates :title, presence: true, length: { minimum: 3, maximum: 100}
end