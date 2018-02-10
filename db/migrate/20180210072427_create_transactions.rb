class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :money_operations do |t|
      t.string :info
      t.float :score
      t.integer :transaction_type_id
      t.integer :user_id

      t.timestamps
    end

    create_table :transaction_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
