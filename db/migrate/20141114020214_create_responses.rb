class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :years_using_ruby
      t.string :city
      t.string :state
      t.string :stay
      t.text :thoughts

      t.timestamps
    end
  end
end
