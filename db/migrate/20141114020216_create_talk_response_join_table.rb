class CreateTalkResponseJoinTable < ActiveRecord::Migration
  def change
    create_table :talk_responses do |t|
      t.integer :talk_id
      t.integer :response_id
      t.integer :score
      t.text :comment

      t.index [:talk_id, :response_id]
      t.index [:response_id, :talk_id]
    end
  end
end
