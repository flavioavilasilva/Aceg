class CreateRacas < ActiveRecord::Migration
  def change
    create_table :racas do |t|
      t.string :raca

      t.timestamps
    end
  end
end
