class AddColumnToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :employees, :manager, index: true
  end
end
