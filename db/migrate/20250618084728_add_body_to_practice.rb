class AddBodyToPractice < ActiveRecord::Migration[7.1]
  def change
    add_column :practices, :body, :text
  end
end
