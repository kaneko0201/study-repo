class CreatePractices < ActiveRecord::Migration[7.1]
  def change
    create_table :practices do |t|
      t.string :title, null:false

      t.timestamps
    end
  end
end
