class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :items, :done, from: nil, to: false
  end
end
