class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name
      t.belongs_to :country
      t.timestamps null: false
    end
  end
end
