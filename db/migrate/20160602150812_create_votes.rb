class CreateVotes < ActiveRecord::Migration
  def change
     create_table :votes do |t|
      t.string :value
      t.integer :answer_id

      t.timestamps
    end
  end
end
