class UpdateContributions < ActiveRecord::Migration
  def change
    add_column :contributions, :stripeToken, :string
  end
end
