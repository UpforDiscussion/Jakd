class AddGamesTable < ActiveRecord::Migration
    def change
        create_table :games do |t|
            t.boolean :is_in_progress, :default => true
            t.timestamps
        end
    end

end
