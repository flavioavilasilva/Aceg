class CreateStatusAnimals < ActiveRecord::Migration
  def change
    create_table :status_animals do |t|
      t.string :status_animal

      t.timestamps
    end
  end
end
