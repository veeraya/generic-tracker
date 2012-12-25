class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :url
      t.string :source

      t.timestamps
    end
  end
end
