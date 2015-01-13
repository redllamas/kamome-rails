class CreateWorklogTable < ActiveRecord::Migration
  def change
    create_table :worklogs do |t|
      t.datetime :date
      t.string :location
      t.text :public
      t.text :private
      t.string :notes
    end
  end
end
