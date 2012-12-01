class AddUsersTable < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :username
            t.string :password_digest
            t.string :avatar
            t.integer :account_balance, :default => 1000
            t.integer :games_won, :default => 0
            t.integer :games_lost, :default => 0
            t.integer :amount_won, :default => 0
            t.integer :amount_lost, :default => 0
            t.boolean :logged_in, :default => false
            t.timestamps
        end
    end
end
