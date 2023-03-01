class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.string :description
      t.string :emissionDate
      t.date :dueDate
      t.date :paymentDate
      t.float :totalAmount
      t.string :paymentStatus
      t.string :customerId

      t.timestamps
    end
  end
end
