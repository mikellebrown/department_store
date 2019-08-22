class AddDepartmentNameToDepartments < ActiveRecord::Migration[6.0]
  def change
    add_column :departments, :department_name, :string
  end
end
