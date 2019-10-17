class AddActiveColumnToStudents < ActiveRecord::Migrations
  def change
    add_column :students, :active, :boolean, default: false 
  end 
end 