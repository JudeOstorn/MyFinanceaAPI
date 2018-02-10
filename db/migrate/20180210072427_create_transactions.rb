class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.float :score
      t.string :info
      t.integer :type_id
      t.integer :user_id

      t.timestamps
    end

    create_table :transaction_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
