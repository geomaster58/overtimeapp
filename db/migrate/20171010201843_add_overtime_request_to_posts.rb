class AddOvertimeRequestToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :overtime_request, :decimal
  end
end
