class Bill < ApplicationRecord
    def run_scheduled_payments()

        today_payments = Bill.where(:paymentStatus => "NOT-PAID").where(:paymentDate => Time.now.beginning_of_day..Time.now.end_of_day).find_each do | payment |
             payment.update(:paymentStatus => "PAID")
        end

    end
end
