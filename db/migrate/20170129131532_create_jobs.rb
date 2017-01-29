class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.boolean :exclusive
      t.references :employer, foreign_key: true
      t.references :job_category, foreign_key: true
      t.references :job_type, foreign_key: true
      t.string :title
      t.text :content
      t.string :location
      t.date :apply_date
      t.string :apply_info

      t.timestamps
    end
  end
end
