class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.belongs_to :user, null: false, foreign_key: true, index: true, on_delete: :cascade
      t.string :title, null: false
      t.text :description, null: false
      t.integer :cost, null: false

      t.timestamps null: false
    end
  end
end
