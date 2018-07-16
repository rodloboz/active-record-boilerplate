class AddTimestampsToConsultations < ActiveRecord::Migration[5.1]
  def change
    add_column :consultations,:created_at, :datetime
    add_column :consultations, :updated_at, :datetime
  end
end
