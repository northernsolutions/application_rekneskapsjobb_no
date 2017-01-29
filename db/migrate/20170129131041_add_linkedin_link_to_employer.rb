class AddLinkedinLinkToEmployer < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :linkedin_link, :string
  end
end
