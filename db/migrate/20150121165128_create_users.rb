class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname, null: false, limit: 20
      t.string :lastname, null: false, limit: 40
      t.string :age, null: false, limit: 3
      t.string :location, null: false, limit:50

      t.timestamps null: false
    end
  end
end

# class CreateWits < ActiveRecord::Migration
#   def change
#     create_table :wits do |t|
#       t.string :message, null: false, limit: 165
#       t.timestamps null: false
#     end
#   end
# end

