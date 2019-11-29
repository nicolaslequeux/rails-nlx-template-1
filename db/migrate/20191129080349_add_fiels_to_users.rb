class AddFielsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :postcode, :string
    add_column :users, :country, :string
    add_column :users, :note, :text
    add_column :users, :notification, :boolean
    add_column :users, :birth_date, :date
  end
end
