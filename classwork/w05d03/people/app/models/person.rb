class Person < ApplicationRecord
	validates :name, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters'}

	validates :age, :numericality => {:only_integer => true}

	validates :alien_status, inclusion: { in: %w(yes no), message: "=> : %{value} is incorrect, please enter yes or no" }

	validates :car, inclusion: { in: %w(chevy pontiac ford honda), message: "=> : %{value} is incorrect, please enter the right car" }
end
