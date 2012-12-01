class AddUsersTable < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :username
            t.string :password_digest
            t.string :photo
            t.integer :account_balance, :default => 1000
            t.integer :games_won, :default => 0
            t.integer :games_lost, :default => 0
            t.integer :lifetime_amount_won, :default => 0
            t.integer :lifetime_amount_lost, :default => 0
            t.timestamps
        end
    end
end
