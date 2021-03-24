class AddBirthdateToWrestlers < ActiveRecord::Migration[6.1]
  def change
    add_column :wrestlers, :birthdate, :string
  end
end
