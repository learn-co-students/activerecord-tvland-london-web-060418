class AddFullNamesToActors < ActiveRecord::Migration[4.2]
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :first_name
      t.string :last_name
    end
  end
end
