class Participant < ApplicationRecord
	has_many :overviews
	has_many :events, through: :overviews

	validates :first_name, length: {minimum: 2}, presence: true
	validates :last_name, length: {minimum: 3}, presence: true
	validates_format_of :email, :with => /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/ , presence: true
	
end
