class CreateStatusAnimais < ActiveRecord::Migration
  def change
    create_table :status_animais do |t|
      t.string :status_animal

      t.timestamps
    end
  end
end
