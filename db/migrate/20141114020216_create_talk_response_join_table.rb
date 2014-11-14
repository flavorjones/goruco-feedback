class CreateTalkResponseJoinTable < ActiveRecord::Migration
  def change
    create_join_table :talks, :responses do |t|
      t.index [:talk_id, :response_id]
      t.index [:response_id, :talk_id]
    end
  end
end
