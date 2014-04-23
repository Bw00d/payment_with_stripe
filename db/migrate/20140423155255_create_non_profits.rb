class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.column :name, :string
    end
  end
end
