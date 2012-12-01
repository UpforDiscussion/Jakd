class AddUsersTable < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :username
            t.string :password_digest
            t.integer :account_balance
            t.integer :games_won
            t.integer :games_lost
            t.integer :lifetime_amount_won
            t.integer :lifetime_amount_lost
            t.timestamps
        end
    end
end
