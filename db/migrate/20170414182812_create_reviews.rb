class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer "doctor_id"
      t.string "text"
      t.timestamps
    end
  end
end
