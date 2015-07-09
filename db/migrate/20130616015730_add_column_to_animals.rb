class AddColumnToAnimals < ActiveRecord::Migration
    def self.up
    add_column :animals, :descricao_animal, :text
    end

    def self.down
    remove_column :animals, :descricao_animal
    end
end
