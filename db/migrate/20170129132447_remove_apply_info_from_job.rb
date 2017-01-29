class RemoveApplyInfoFromJob < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :apply_info, :string
  end
end
