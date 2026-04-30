class CreateJobApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :job_applications do |t|
      t.string :company_name
      t.string :position
      t.string :tech_stack
      t.string :status
      t.integer :interest_level
      t.date :applied_on
      t.date :first_interview_on
      t.date :second_interview_on
      t.date :final_interview_on
      t.date :offer_received_on
      t.date :offer_response_deadline
      t.text :concern
      t.text :questions
      t.text :memo

      t.timestamps
    end
  end
end
