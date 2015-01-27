class CreateNewWits < ActiveRecord::Migration
  def change
    create_table :new_wits do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
