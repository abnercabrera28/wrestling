class CreateWrestlers < ActiveRecord::Migration[6.1]
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.string :special_move
      t.integer :age
      t.integer :user_id
      t.string :belt
      t.string :hails_from
    end
  end
end
