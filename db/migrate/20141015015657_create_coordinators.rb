class CreateCoordinators < ActiveRecord::Migration
  def change
    create_table :coordinators do |t|
      t.string :name
      t.string :mobile
      t.string :department

      t.timestamps
    end
  end
end
