class Transaction < ApplicationRecord
 belongs_to :transaction_types
 belongs_to :users
end
