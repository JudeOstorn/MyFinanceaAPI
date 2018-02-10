class MoneyOperation < ApplicationRecord
 belongs_to :transaction_type
 belongs_to :user
end
