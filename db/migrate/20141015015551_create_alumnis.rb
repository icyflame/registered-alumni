class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.string :name
      t.string :hall
      t.string :dept
      t.string :year

      t.timestamps
    end
  end
end
