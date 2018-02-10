class Transaction < ApplicationRecord
 belongs_to :transaction_types, foreign_key: :type_id
 belongs_to :users, foreign_key: :user_id
end
