class TransactionType < ApplicationRecord
  has_many :money_operations
end
