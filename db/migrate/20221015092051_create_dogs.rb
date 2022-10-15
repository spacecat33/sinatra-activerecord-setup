class CreateDogs < ActiveRecord::Migration[5.2]
  def up
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

  def down
    drop_table :dogs
  end
end

## alternatively, write the following code which is a shorter way of writing
## up and down methods. While the rollback method is not included, its implicit
## in the change method. Rolling back the database would work in exactly the same 
## way as using the down method.
# 
# def change
#   create_table :dogs do |t|
#     t.string :name
#     t.string :breed
#   end
# end
