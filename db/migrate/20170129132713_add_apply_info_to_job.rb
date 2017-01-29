class AddApplyInfoToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :apply_info, :text
  end
end
