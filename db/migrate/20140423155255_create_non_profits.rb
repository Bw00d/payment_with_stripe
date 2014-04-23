class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|
      t.column :name, :string
    end
  end
end
