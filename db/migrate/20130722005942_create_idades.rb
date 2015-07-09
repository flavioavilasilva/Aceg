class CreateIdades < ActiveRecord::Migration
  def change
    create_table :idades do |t|
      t.string :idade_animal

      t.timestamps
    end
  end
end
